#include "application.h"
#include "cover.h"
#include "handle.h"
#include "kissat.h"
#include "print.h"

#include <assert.h>
#include <stdbool.h>

#include <sys/resource.h>

void Tempo_CPU_Sistema(double *seg_CPU_total, double *seg_sistema_total)
{
  long seg_CPU, seg_sistema, mseg_CPU, mseg_sistema;
  struct rusage ptempo;

  getrusage(0,&ptempo);

  seg_CPU = ptempo.ru_utime.tv_sec;
  mseg_CPU = ptempo.ru_utime.tv_usec;
  seg_sistema = ptempo.ru_stime.tv_sec;
  mseg_sistema = ptempo.ru_stime.tv_usec;

 *seg_CPU_total     = (seg_CPU + 0.000001 * mseg_CPU);
 *seg_sistema_total = (seg_sistema + 0.000001 * mseg_sistema);
}

static kissat *volatile solver;

// clang-format off

static void
kissat_signal_handler (int sig)
{
  kissat_signal (solver, "caught", sig);
  kissat_print_statistics (solver);
  kissat_signal (solver, "raising", sig);
#ifdef QUIET
  (void) sig;
#endif
  FLUSH_COVERAGE (); } // Keep this '}' in the same line!

// clang-format on

static volatile bool ignore_alarm = false;

static void kissat_alarm_handler (void) {
  if (ignore_alarm)
    return;
  assert (solver);
  kissat_terminate (solver);
}

#ifndef NDEBUG
extern int dump (kissat *);
#endif

#include "error.h"
#include "random.h"
#include <strings.h>

int main (int argc, char **argv) {
  int res;
  solver = kissat_init ();
  kissat_init_alarm (kissat_alarm_handler);
  kissat_init_signal_handler (kissat_signal_handler);
  
  double s_CPU_inicial, s_total_inicial, s_CPU_final, s_total_final;
  Tempo_CPU_Sistema(&s_CPU_inicial, &s_total_inicial);
  res = kissat_application (solver, argc, argv);
  Tempo_CPU_Sistema(&s_CPU_final, &s_total_final);
  
  kissat_reset_signal_handler ();
  ignore_alarm = true;
  kissat_reset_alarm ();
  kissat_release (solver);
  printf ("-- Tempo de CPU total = %f --\n", s_CPU_final - s_CPU_inicial);
#ifndef NDEBUG
  if (!res)
    return dump (0);
#endif
  return res;
}
