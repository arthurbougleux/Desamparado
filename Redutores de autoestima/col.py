import os
from subprocess import *
import sys

def read_col(filename):

    file = open(filename, "r")

    while True:
        l = file.readline()

        if l.startswith("p"):

            l = l.split()
            n = int(l[2])
            m = int(l[3])

            break

    g = [ [0 for i in range(n)] for i in range(n) ]

    for l in file:

        l = l.split()
        g[int(l[1]) - 1][int(l[2]) - 1] = 1
    
    file.close()

    return g



def colk_to_cnf(g, k, out, original):

    n = len(g)
    nvars = n*k
    m = n
        
    #Me processa
    for i in range(n):
        for j in range(n):
                if g[i][j]:
                    m += k

    header = ["c\n",
                "c Reduzido de "+str(k)+"-coloração para SAT\n",
                "c Arquivo original: "+original,
                "c\n", ("p cnf " + str(nvars) + " " + str(m) + "\n")
                ]
    f.writelines(header)

    f = open(out, "w")

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
        m += 1

    #Nenhum nó compartilha a cor com um vizinho
    for i in range(n):

        for j in range(n):

                if g[i][j]:

                    for c in range(k):

                        f.write("-" + var(i,c) + " -" + var(j, c) + endcl)

                    m += k

    f.close()


g = read_col(sys.argv[1])

k = int(sys.argv[3])
colk_to_cnf(g, k, sys.argv[2], sys.argv[1])