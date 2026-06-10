import os
from subprocess import *
import sys
from math import *
#from dot import *

def read_instance(filename):

        if filename.endswith(".hcp"):
            return read_tsplib(filename)
        
        if filename.endswith(".csv"):
            return read_bel(filename)

def read_tsplib(filename):
    
    file = open(filename, "r")

    n = m = 0

    for l in file:

        if l.startswith("DIMEN"):

            n = int(l.strip().split()[-1])
            break

    if n == 0:
        ##print("Sem n?")
        exit(1)

    g = [ [0 for i in range(n)] for i in range(n) ]

    while not file.readline().startswith("EDGE_DATA_SE"):
        pass

    for l in file:

        l = list(map(int, l.strip().split()))
        if l[0] <= 0:
            break

        i,j = l[0:2]
        i -=1
        j -=1

        g[i][j] = 1
        g[j][i] = 1
        m += 2
        #g[i - 1][j - 1] = 1

        #m += 1


    file.close()

    return g, n, m

def read_bel(filename):

    file = open(filename, "r")

    daux = {}
    edges = []
    i = 0
    for line in file:

        e = list(map(int, line.split()))

        for v in e:
            if not v in daux.keys():
                daux[v] = i
                i += 1

        edges.append(e)
    
    n = len(daux.keys())
    g = [[ 0 for _ in range(n) ] for _ in range(n) ]

    m = 0
    for e in edges:
         
         n1,n2 = e
         i = daux[n1]
         j = daux[n2]

         if not g[i][j]:
              g[i][j] = 1
              g[j][i] = 1
              m += 2

        
    extra = [] #[(4,7),(15,14),(13,10),(10,11),(11,6),(6,5)]
    for e in extra:
         i = e[0]
         j = e[1]

         if not g[i][j]:
            g[i][j] = 1
            g[j][i] = 1
            m += 2
        

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
    #nclauses += n * ((n-1) * (n-2))/2
        
    return nclauses


def unpack_lit(l, n):
        l = abs(l) - 1
        pos = l//n
        no = l%n
        return pos, no

def clause_to_edge(cl, n):
     
     l = list(map(int, cl.split()))
     return unpack_lit(l[0], n)[1], unpack_lit(l[1], n)[1]

#O i-ésimo vértice a ser visitado é j
def var(i,j):
    return str((i*n)+j + 1)

def cnf_to_mat(file, g1):
    
    f = open(file, "r")

    for line in f:
         
         if line.startswith("p "):
              
            n = int(sqrt(int(line.split()[2])))

            g = [[ 1 for _ in range(n) ] for _ in range(n) ]     

    #print("Lowop")
    for line in f:
         if line.startswith("c"):
              break
         
    for line in f:
         if line.startswith("c"):
              continue

         lits = line.split()
         ##print(lits)
         if len(lits) != 3:
              continue
         
         lits = list(map(int, lits))[:2]

         _, n1 = unpack_lit(lits[0], n)
         _, n2 = unpack_lit(lits[1], n)

         if g1[n1][n2] or g1[n2][n1] and n1 != n2:
              print("Erro: ", lits, "i: ", n1, "j: ", n2)
         g[n1][n2] = 0
         g[n2][n1] = 0

    return g
         
def hpcg_to_cnf(g, n, m, original, out):

    nvars = calc_nvars(n)
    nclauses = calc_nclauses(g, n, m)


    endcl = " 0\n"

    with open(out, "w") as f:

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
                #print("Pos: ", i, "Nó: ", j, "Literal: ", var(i, j))

                

            cl += endcl
            f.write(cl)
            #print(cl)
            #input()


        #Todas as posições do percurso são preenchidas
        for i in range(n):

            cl = ""

            for j in range(n):

                cl += var(i, j) + " "
                #print("Pos: ", i, "Nó: ", j, "Literal: ", var(i, j))

            cl += endcl
            f.write(cl)
            #print(cl)
            #input()


        #Nenhum nó aparece duas vezes na solução
        for j in range(n):

            for i in range(n):

                for k in range(i+1, n):
                        
                        f.write("-" + var(i, j) + " -" + var(k, j) + endcl)

                        #print("Pos: ", i, "Nó: ", j, "Literal: ", var(i, j))
                        #print("Pos: ", k, "Nó: ", j, "Literal: ", var(k, j))
                        #print(("-" + var(i, j) + " -" + var(k, j) + endcl))

                        #input()




        #Dois nós não ocupam a mesma posição
        for i in range(n):

            for j in range(n):

                for k in range(j+1, n):

                        f.write("-" + var(i, j) + " -" + var(i, k) + endcl)
                        
                        #print("Pos: ", i, "Nó: ", j, "Literal: ", var(i, j))
                        #print("Pos: ", i, "Nó: ", k, "Literal: ", var(i, j))
                        #print(("-" + var(i, j) + " -" + var(i, k) + endcl))

                        #input()


        #print("XwX")
        #Se não tem aresta, j e k não podem aparecer em sequência
        for i in range(n):
            #f.write("c Pos: " + str(i) + "\n")
            for j in range(n):

                for k in range(j+1, n):

                    if (not g[j][k]) and (j != k):

                        f.write("-" + var(i, j) + " -" + var(((i+1) % n), k) + endcl)
                        f.write("-" + var(i, k) + " -" + var(((i+1) % n), j) + endcl)
                        

                        #print("Pos: ", i, "Nó: ", j, "Literal: ", var(i, j))
                        #print("Pos: ", ((i+1) %n), "Nó: ", k, "Literal: ", var(((i+1) % n), k))
                        #print("Pos: ", i, "Nó: ", k, "Literal: ", var(i, k))
                        #print("Pos: ", ((i+1) %n), "Nó: ", j, "Literal: ", var(((i+1) % n), j))

                        #print(("-" + var(i, j) + " -" + var(((i+1) % n), k) + endcl))
                        #input()




if __name__ == "__main__":
    
    infile = sys.argv[1]
    out = sys.argv[2]

    g, n, m = read_instance(infile)
    
    hpcg_to_cnf(g, n, m, infile, out)

    #print("UwU")
    #g2 = cnf_to_mat(out, g)
    #g_cmp(g, n, m, out)

    #mato_dot(g).render("temporary_dummy", cleanup=True, outfile=out + ".png")