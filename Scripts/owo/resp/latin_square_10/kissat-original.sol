-- Solver:kissat-original --
-- 97-Coloring --
c ---- [ banner ] ------------------------------------------------------------
c
c Kissat SAT Solver
c 
c Copyright (c) 2021-2024 Armin Biere University of Freiburg
c Copyright (c) 2019-2021 Armin Biere Johannes Kepler University Linz
c 
c Version sc2024 d776b9e1002a822b821e1926835145300580fbea
c gcc (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0 -W -Wall -O3 -DNDEBUG
c Mon Sep 22 15:53:48 -03 2025 Linux Eyvel 6.8.0-83-generic x86_64
c
c ---- [ parsing ] -----------------------------------------------------------
c
c opened and reading DIMACS file:
c
c   latin_square_10.cnf
c
c parsed 'p cnf 87300 59626800' header
c closing input after reading 469937355 bytes (448 MB)
c finished parsing after 1.93 seconds
c
c ---- [ solving ] -----------------------------------------------------------
c
c  seconds  switched rate     size/glue tier1     binary        remaining
c          MB reductions conflicts size  tier2       irredundant
c           level restarts redundant glue  trail           variables
c
c *  1.93 266 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 29812950 900 87300 100%
c (  1.93 268 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 29812950 900 87300 100%
c .  1.93 268 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 29812950 900 87300 100%
c f 22.29 539 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 23841964 900 87750 101%
c ) 22.55 539 0 0 0  0 0   0   0 0.0 0 0 0 0 0% 23841964 900 87750 101%
c { 22.56 540 0 0 0  0 0   0   0 0.0 0 0 2 6 0% 23841964 900 87750 101%
c - 22.71 540 99 0 1  0 1 1001 599 1.0 98 95 95 97 75% 23841964 900 87750 101%
c } 22.71 540 99 1 1  0 1 1001 599 1.0 98 95 95 97 75% 23841964 900 87750 101%
c [ 22.71 540 0 1 1  0 0 1001 599 0.0 0 0 2 6 0% 23841964 900 87750 101%
c B 22.72 540 0 1 1  0 0 1001 599 0.0 0 0 2 6 0% 23841964 900 87750 101%
c - 22.87 540 105 1 2  0 1 2002 1298 1.0 99 96 95 99 75% 23841964 900 87750 101%
c ] 22.87 540 105 2 2  0 1 2002 1298 1.0 99 96 95 99 75% 23841964 900 87750 101%
c { 22.87 540 99 2 2  0 1 2002 1298 1.0 98 95 95 97 75% 23841964 900 87750 101%
c } 22.93 541 97 3 2  0 1 3002 1777 1.0 97 94 95 97 75% 23841964 900 87750 101%
c [ 22.93 541 105 3 2  0 1 3002 1777 1.0 99 96 95 99 75% 23841964 900 87750 101%
c W 23.91 395 105 3 2  0 1 3002 1777 1.0 99 96 95 99 75% 23841964 900 87750 101%
c - 24.03 395 106 3 3  0 1 3417 2007 1.0 101 97 95 99 75% 23841964 900 87750 101%
c ] 24.03 395 106 3 3  0 1 3417 2007 1.0 101 97 95 99 75% 23841964 900 87750 101%
c ? 24.03 395 97 3 3  0 1 3417 2007 1.0 97 94 95 97 75% 23841964 900 87750 101%
c
c ---- [ result ] ------------------------------------------------------------
c
s UNKNOWN
c
c ---- [ profiling ] ---------------------------------------------------------
c
c          20.62   85.79 %  preprocess
c          20.38   84.81 %  probe
c          18.73   77.95 %  factor
c           1.93    8.02 %  parse
c           1.17    4.85 %  congruence
c           0.97    4.03 %  simplify
c           0.97    4.03 %  walking
c           0.51    2.11 %  search
c           0.36    1.48 %  substitute
c           0.29    1.19 %  stable
c           0.27    1.12 %  reduce
c           0.23    0.98 %  fastel
c           0.22    0.92 %  focused
c           0.13    0.52 %  sweep
c           0.01    0.05 %  lucky
c           0.00    0.01 %  backbone
c =============================================
c          24.03  100.00 %  total
c
c ---- [ statistics ] --------------------------------------------------------
c
c conflicts:                             3417              142.17 per second
c decisions:                             4471                1.31 per conflict
c factored:                               450                1 %  variables
c propagations:                       5330006           221768    per second
c reductions:                               3             1139    interval
c rephased:                                 2             1708    interval
c switched:                                 3             1139    interval
c walks:                                    1             3417    interval
c
c ---- [ glue usage ] --------------------------------------------------------
c
c focused glue 94 used 794 clauses 27.57% accumulated 70.07% tier1
c focused glue 95 used 392 clauses 13.61% accumulated 83.68%
c focused glue 96 used 230 clauses  7.99% accumulated 91.67% tier2
c
c stable glue 95 used 347 clauses 14.20% accumulated 57.02% tier1
c stable glue 96 used 258 clauses 10.56% accumulated 67.58%
c stable glue 97 used 234 clauses  9.58% accumulated 77.16%
c stable glue 98 used 174 clauses  7.12% accumulated 84.28%
c stable glue 99 used 144 clauses  5.89% accumulated 90.18% tier2
c
c ---- [ resources ] ---------------------------------------------------------
c
c maximum-resident-set-size:        889970688 bytes        849 MB
c process-time:                            24s              24.03 seconds
c
c ---- [ shutting down ] -----------------------------------------------------
c
c exit 0
-- Tempo de CPU total = 23.358543 --
-- Correto:  False  --
