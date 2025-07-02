import sys

def read_clq(filename):

    f = open(filename, "r")

    n = 0

    for l in f:

        if l.startswith("p"):

            n = int(l.strip().split()[2])
            break
    
    if n == 0:
        #print("Sem n?")
        exit(1)

    g = [ [0 for i in range(n)] for i in range(n) ]

    for l in f:

        e = list(map(int, l.strip().split()[1:]))

        g[e[0]-1][e[1]-1] = 1
    
    return g



def clq_to_cnf(g, k, original, out):
    
    #O i-ésimo elemento da clique é j
    def var(i,j):
        return str((i*n)+j + 1)


    endcl = " 0\n"

    n = len(g)
    nvars = n * k

    m = k
    #Me processa
    for i in range(k):
        for j in range(k):
            for v in range(n):
                if (i != j):
                    m += 1
    for n1 in range(n):
        for n2 in range(n1):
            for i in range(k):
                for j in range(k):
                    if (not g[n1][n2]) and (i != j):
                        m += 1
                
    f = open(out, "w")
    header = ["c\n",
                "c Reduzido de "+str(k)+"-CLIQUE para SAT\n",
                "c Arquivo original: "+original +"\n",
                "c\n", ("p cnf " + str(nvars) + " " + str(m) + "\n")
                ]

    f.writelines(header)


    #Todas as k posições da lista estão preenchidas por alguém
    for i in range(k):

        cl = ""

        for j in range(n):

            cl += var(i, j) + " "
        
        cl += endcl
        f.write(cl)
    
    f.write("c\n")

    #Ninguém aparece duas vezes na clique
    for i in range(k):

        for j in range(k):

            for v in range(n):

                if (i != j):
                    f.write("-"+ var(i,v) + " -" + var(j,v) + endcl)

    f.write("c\n")
    
    #Quem está na clique consegue acessar todos os outros
    for n1 in range(n):
        for n2 in range(n1):

            for i in range(k):
                for j in range(k):

                    if (not g[n1][n2]) and (i != j):

                        f.write("-"+ var(i,n1) + " -"+ var(j,n2) + endcl)


    f.close()


infile = sys.argv[1]
out = sys.argv[2]
k = int(sys.argv[3])

#print("Lendo grafo...")
g = read_clq(infile)

#print("Reduzindo instância...")

clq_to_cnf(g, k, infile, out)