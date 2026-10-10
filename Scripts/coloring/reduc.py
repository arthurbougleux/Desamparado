import argparse
import col

def write_header(file, problem_name, n, m):
    if problem_name : file.write('c ' + problem_name + ' to SAT\n')
    file.write(f'p cnf {n} {m}\n')


def reduce_instance(infile, out, read_instance, clause_writers, calc_n, calc_m, problem_name='', k=0):
    
    inst = read_instance(infile)
    if k : inst.k = k

    with open(out, "w") as outfile: 

        write_header(outfile, problem_name, calc_n(inst), calc_m(inst))
        for w in clause_writers: w(outfile, inst)



parser = argparse.ArgumentParser(description="Reduz problemas para SAT ⚞^. .^⚟")
parser.add_argument('problem', help="Problema original")
parser.add_argument('infile', help="Arquivo de entrada")
parser.add_argument('outfile', help="Arquivo de saída")
parser.add_argument('-k', action="store", type=int)

args = parser.parse_args()

k = args.k

if args.problem == "col":

    name = f"{args.k}-Coloring"
    inst_reader = col.read_col
    writers = [col.all_colored,
               col.no_shared_colors
               ]
    calc_n = col.calc_nvars
    calc_m = col.calc_nclauses


reduce_instance(args.infile, args.outfile, inst_reader, writers, calc_n, calc_m, name, k)