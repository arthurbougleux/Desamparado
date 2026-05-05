from subprocess import *
from hc import *
import graphviz as pg

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

def mato_dot(m):

    resp = pg.Graph()

    for n in range(len(m)):
        resp.node(str(n))

    for i in range(len(m)):
        for j in range(len(m[i])):
            if m[i][j]:
                resp.edge(str(i),str(j))
    
    return resp

if __name__ == "__main__":

    output = run("nauty-geng 9 | nauty-showg", shell=True, text=True, stdout=PIPE, stderr=None).stdout
    graphs = parse_graphs(output)


    fails = 0
    for g in graphs:

        n = len(g)
        m = sum([sum(l) for l in g])
        
        hpcg_to_cnf(g, n, m, "dummy", "tmp.cnf")

        solver_out = run("./kissat-original -q tmp.cnf", shell=True, text=True, stdout=PIPE, stderr=None).stdout
        solver_out = list(filter(lambda x: x.startswith("s UNSAT"), solver_out.split("\n")))

        if not solver_out:
            continue

        fails += 1

        dotted = mato_dot(g)

        dotted.render("temporary_dummy", cleanup=True, outfile="candidato_" + str(fails) + ".png")

    
