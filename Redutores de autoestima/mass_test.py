from subprocess import *
from hc import *

def parse_graphs(out):

    resp = []

    out = list(filter(lambda x: x , out.split("\n")))

    while True:

        l = out.pop(0).strip()[:-1]

        match l.split():

            case ["Graph", *xs]:

                n = int(l.split()[3])
                g = [ [ 0 for _ in range(n)] for _ in range(n) ]

                if g:
                    resp.append(g)
        
            case [x, *xs]:
                x = int(x)
                for y in map(int, filter(lambda y : y.isdecimal(), xs)):
                    g[x][y] = 1
                
                if not out:
                    break
                

    return resp
    
        


output = run("nauty-geng 5 | nauty-showg", shell=True, text=True, stdout=PIPE, stderr=None).stdout
graphs = parse_graphs(output)


for g in graphs:

    n = len(g)
    m = 0
    for l in g:
        m+=sum(l)
    
    hpcg_to_cnf(g, n, m, "dummy", "tmp.cnf")

    solver_out = run("./kissat-original -q tmp.cnf", shell=True, text=True, stdout=PIPE, stderr=None).stdout
    solver_out = list(filter(lambda x: x.startswith("s UNSAT"), solver_out.split("\n")))

    print(solver_out)

