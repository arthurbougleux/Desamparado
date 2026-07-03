import argparse
import col

parser = argparse.ArgumentParser(description="Verifica se a valoração faz sentido ⚞^. .^⚟")
parser.add_argument('problem', help="Problema original")
parser.add_argument('solution', help="Arquivo de solução")
parser.add_argument('instance', help="Instancia original")
parser.add_argument('-k', action="store", type=int)

args = parser.parse_args()

if args.problem == "col":

    if not args.k :
        print("K necessário para coloração")
        exit(0)

    inst_reader = col.read_col
    sol_reader = col.read_sol
    verify = col.verify_coloring

inst = inst_reader(args.instance)
sol = sol_reader(args.solution, args.k)
resp = verify(inst, sol)

print(resp)
