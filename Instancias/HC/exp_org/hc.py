import os
from subprocess import *
import sys

def read_hcp(filename):
    
    file = open(filename, "r")

    n = m = 0

    for l in file:

        if l.startswith("DIMEN"):

            n = int(l.strip().split()[-1])
            break

    if n == 0:
        #print("Sem n?")
        exit(1)

    g = [ [0 for i in range(n)] for i in range(n) ]

    while not file.readline().startswith("EDGE_DATA_SE"):
        pass

    for l in file:

        l = list(map(int, l.strip().split()))
        if l[0] <= 0:
            break

        i,j = l[0:2]

        g[i - 1][j - 1] = 1

        m += 1


    file.close()

    return g, n, m


def calc_nvars(n):
    return n**2 

def calc_nclauses(g, n, m):
    
    nclauses = 2*n
    #Me processa
    '''    for j in range(n):
        for i in range(n):
            for k in range(i+1, n):  
                    nclauses += 1'''
    
    nclauses += n * ((n * (n-1))// 2)

    '''    for i in range(n):
        for j in range(n):
            for k in range(j+1, n):
                    nclauses += 1'''
    nclauses += n * ((n * (n-1))// 2)


    '''    for i in range(n):
        for j in range(n):
            for k in range(n):
                if not g[j][k] and (j != k): 
                    nclauses += 1'''
    nclauses += n * ((n**2) - m - n)
        
    return nclauses

def hpcg_to_cnf(g, n, m, original, out):

    #O i-ésimo vértice a ser visitado é j
    def var(i,j):
        return str((i*n)+j + 1)


    nvars = calc_nvars(n)
    nclauses = calc_nclauses(g, n, m)


    endcl = " 0\n"


    f = open(out, "w")

    header = ["c\n",
              "c Reduzido de ciclo hamiltoniano para SAT\n", "c\n",
              "c Arquivo original: "+ original + "\n",
              "c\n",
              "p cnf " + str(nvars) + " " + str(nclauses) + "\n"
              ]
    
    f.writelines(header)
    

    #Todos os vértices estão presentes
    for j in range(n):

        cl = ""

        for i in range(n):

            cl += var(i, j) + " "
            

        cl += endcl
        f.write(cl)


    #Todas as posições do percurso são preenchidas
    for i in range(n):

        cl = ""

        for j in range(n):

            cl += var(i, j) + " "

        cl += endcl
        f.write(cl)


    #Nenhum nó aparece duas vezes na solução
    for j in range(n):

        for i in range(n):

            for k in range(i+1, n):
                    
                    f.write("-" + var(i, j) + " -" + var(k, j) + endcl)




    #Dois nós não ocupam a mesma posição
    for i in range(n):

        for j in range(n):

            for k in range(j+1, n):

                    f.write("-" + var(i, j) + " -" + var(i, k) + endcl)



    #Se não tem aresta, j e k não podem aparecer em sequência
    for i in range(n):

        for j in range(n):

            for k in range(n):

                if not g[j][k] and (j != k):
                    f.write("-" + var(i, j) + " -" + var(((i+1) % n), k) + endcl)


    f.close()



if __name__ == "__main__":
    
    infile = sys.argv[1]
    out = sys.argv[2]
    g, n, m = read_hcp(infile)

    hpcg_to_cnf(g, n, m, infile, out)