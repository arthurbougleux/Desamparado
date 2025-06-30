import os
from subprocess import *
import sys

def read_hcp(filename):
    
    file = open(filename, "r")

    n = 0

    for l in file:

        if l.startswith("DIMENSION") or l.startswith("DIMENTION"):

            n = int(l.strip().split()[-1])
            break

    if n == 0:
        #print("Sem n?")
        exit(1)

    g = [ [0 for i in range(n)] for i in range(n) ]

    while not file.readline().startswith("EDGE_DATA_SECTION"):
        pass

    for l in file:

        
        l = list(map(int, l.strip().split()))

        if l[0] <= 0:
            break

        g[l[0] - 1][l[1] - 1] = 1


    file.close()

    return g




def hpcg_to_cnf(g, original, out):

    #O i-ésimo vértice a ser visitado é j
    def var(i,j, n):
        return str((i*n)+j + 1)
    
    #Me processa
    #def calc_m(g):
    n = len(g)
    nvars = n**2 + n
    m = 3*n + n + 1

    #Me processa
    for j in range(n):
        for i in range(n):
            for k in range(i, n+1):
                if (i != k) and (not (i == 0 and k == n)):
                    m += 1
    for i in range(n+1):
        for j in range(n):
            for k in range(n):
                if j != k:
                    m += 1
    for i in range(n):
        for j in range(n):
            for k in range(n):
                if not g[j][k]:
                    m += 1
        
        #return m

    endcl = " 0\n"


    f = open(out, "w")

    header = ["c\n",
              "c Reduzido de ciclo hamiltoniano para SAT\n", "c\n",
              "c Arquivo original: "+ original + "\n",
              "c\n",
              "p cnf " + str(nvars) + " " + str(m) + "\n"
              ]
    
    f.writelines(header)

    #print("\tPrimeira categoria...")
    #Primeiro e último nós são iguais #2n
    for j in range(n):
        f.write("-" + var(0, j, n) + " " + var(n, j, n) + endcl)
        f.write(var(0, j, n) + " -" + var(n, j, n) + endcl)
    

    #print("\tSegunda categoria...")
    #Todos os vértices estão presentes #n
    for j in range(n):

        cl = ""

        for i in range(n):

            cl += var(i, j, n) + " "
            

        cl += endcl
        f.write(cl)


    #print("\tTerceira categoria...")
    #Apenas o nó inicial é visitado várias vezes
    for j in range(n):

        for i in range(n):

            for k in range(i, n+1):

                if (i != k) and (not (i == 0 and k == n)):
                    f.write("-" + var(i, j, n) + " -" + var(k, j, n) + endcl)
                    #tmp.write("c -x" + str(i+1)+"," +str(j+1) + " -x" +str(k+1)+ "," +str(j+1) +"\n")


    #print("\tQuarta categoria...")
    #Todas as posições do percurso são preenchidas
    for i in range(n+1):

        cl = ""

        for j in range(n):

            cl += var(i, j, n) + " "

        cl += endcl
        f.write(cl)


    #print("\tQuinta categoria...")
    #Dois nós não ocupam a mesma posição
    for i in range(n+1):

        for j in range(n):

            for k in range(n):

                if j != k:

                    f.write("-" + var(i, j, n) + " -" + var(i, k, n) + endcl)



    #print("\tSexta categoria...")
    #Se não tem aresta, j e k não podem estar um seguido do outro
    for i in range(n):

        for j in range(n):

            for k in range(n):

                if not g[j][k]:
                    f.write("-" + var(i, j, n) + " -" + var(i+1, k, n) + endcl)



    f.close()



out = "out.cnf"

infile = sys.argv[1]
out = sys.argv[2]
#print("Lendo grafo...")
g = read_hcp(infile)
n = len(g)

#print("Reduzindo instância...")
hpcg_to_cnf(g, infile, out)