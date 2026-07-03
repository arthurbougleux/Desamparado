import sys
from types import SimpleNamespace as Namespace

def read_col(filename):

    file = open(filename, "r")

    while True:
        l = file.readline()

        if l.startswith("p"):
            n, _ = map(int, l.split()[2:])
            break


    g = [ [0 for i in range(n)] for i in range(n) ]

    m = 0

    for l in file:

        if l.startswith("c "):
             continue
        
        i, j = map(lambda x: int(x) - 1, l.split()[1:])

        if (not g[i][j]) and (not g[j][i]):
            m += 2
            g[i][j] = 1
            g[j][i] = 1
    
    file.close()

    return Namespace(g=g, n=n, m=m)

def unpack_lit(l, k):
        l = abs(l) - 1
        no = l//k
        cor = l%k
        return no, cor

def read_sol(file, k):

    with open(file, "r") as fsol:

        sol = {}

        for line in fsol:

            if not line.startswith("v "): continue

            posvals = list(filter(lambda x: x > 0, map(int, line.split()[1:])))

            for var in posvals:
                no, cor = unpack_lit(var, k)
                sol[no] = cor

        return sol

def verify_coloring(inst, sol):

    correto = True
    for i in range(inst.n):

        c1 = sol[i]

        for j in range(inst.n):

            if inst.g[i][j] and sol[j] == c1:
                correto = False
                break
        
        if not correto : break
    return correto

def calc_nvars(inst):
     return inst.n * inst.k

def calc_nclauses(inst):

    nclauses = inst.n
    
    #Me processa
    '''    for i in range(n):
        for j in range(i):
                if g[i][j]:
                    nclauses += k'''
    
    nclauses += inst.m * inst.k
    return nclauses

#O nó i tem a cor j
def var(i,j,k):
    return str((i*k)+j + 1)

endcl = " 0\n"

def all_colored(file, inst):
     
    for i in range(inst.n):

        cl = ""

        for j in range(inst.k):

            cl += var(i, j, inst.k) + " "
        
        cl += endcl
        file.write(cl)

def no_shared_colors(file, inst):

    for i in range(inst.n):
        for j in range(i):

                if inst.g[i][j]:

                    for c in range(inst.k):
                        file.write("-" + var(i,c, inst.k) + " -" + var(j, c, inst.k) + endcl)


def colk_to_cnf(g, n, m, k, out, original):

    f = open(out, "w")

    #n = len(g)
    nvars = calc_nvars(n, k)
    nclauses = calc_nclauses(g, n, m, k)

    header = ["c\n",
                "c Reduzido de "+str(k)+"-coloração para SAT\n",
                "c Arquivo original: "+original,
                "c\n", ("p cnf " + str(nvars) + " " + str(nclauses) + "\n")
                ]
    f.writelines(header)



    #O nó i tem a cor j
    def var(i,j):
        return str((i*k)+j + 1)

    endcl = " 0\n"

    #Todo nó está colorido
    for i in range(n):

        cl = ""

        for j in range(k):

            cl += var(i, j) + " "
        
        cl += endcl
        f.write(cl)

    #Nenhum nó compartilha a cor com um vizinho
    for i in range(n):
        for j in range(i):

                if g[i][j]:

                    for c in range(k):
                        f.write("-" + var(i,c) + " -" + var(j, c) + endcl)


    f.close()


if __name__ == "__main__":
    
    g, n, m = read_col(sys.argv[1])

    k = int(sys.argv[3])
    colk_to_cnf(g, n, m, k, sys.argv[2], sys.argv[1])
