import sys

def read_clq(filename):

    f = open(filename, "r")

    n = 0

    for l in f:

        if l.startswith("p"):

            n, _ = list(map(int, (l.strip().split()[2:])))
            break
    
    if n == 0:
        #print("Sem n?")
        exit(1)

    g = [ [0 for i in range(n)] for i in range(n) ]

    m = 0
    for l in f:

        if l.startswith("c "):
             continue
        if l.startswith("n "):
            print("Não era bem o formato que eu esperava")
            exit(1)
        
        i, j = map(lambda x: int(x)-1, l.strip().split()[1:])

        if not g[i][j]:
            m += 1
            g[i][j] = 1
            g[j][i] = 1
    
    return g, n, m

def calc_nvars(n, k):
    return n * k

def calc_nclauses(g, n, m, k):

    nclauses = k
    #Me processa
    '''    for i in range(k):
        for j in range(i):
            for v in range(n):
                if (i != j):
                    m += 1'''
    nclauses += n * (k * (k-1) //2)

    '''    for n1 in range(n):
        for n2 in range(n1):
            if not (g[n1][n2]):
                for i in range(k):
                    for j in range(k):
                        if (i != j):
                            nclauses+=1'''
    nclauses += (((n * (n-1)) //2) - m) * (k**2 - k)
    return nclauses

def unpack_lit(l, k):
        l = abs(l) - 1
        pos = l//k
        no = l%k
        return no, pos

def clq_to_cnf(g, n, m, k, original, out):
    
    #O i-ésimo elemento da clique é j
    def var(i,j):
        return str((i*n)+j + 1)


    endcl = " 0\n"

    nvars = calc_nvars(n, k)
    nclauses  = calc_nclauses(g, n, m, k)
                
    f = open(out, "w")
    header = ["c\n",
                "c Reduzido de "+str(k)+"-CLIQUE para SAT\n",
                "c Arquivo original: "+original +"\n",
                "c\n", ("p cnf " + str(nvars) + " " + str(nclauses) + "\n")
                ]

    f.writelines(header)


    #Todas as k posições da lista estão preenchidas por alguém
    for i in range(k):

        cl = ""

        for j in range(n):

            cl += var(i, j) + " "
        
        cl += endcl
        f.write(cl)
    

    #Ninguém aparece duas vezes na clique
    for i in range(k):

        for j in range(i):

            for v in range(n):

                if (i != j):
                    f.write("-"+ var(i,v) + " -" + var(j,v) + endcl)

    
    #Quem está na clique consegue acessar todos os outros
    for n1 in range(n):
        for n2 in range(n1):

            if not (g[n1][n2]):

                for i in range(k):
                    for j in range(k):

                        if (i != j):

                            f.write("-"+ var(i,n1) + " -"+ var(j,n2) + endcl)
                            


    f.close()


if __name__ == "__main__":
    
    infile = sys.argv[1]
    out = sys.argv[2]
    k = int(sys.argv[3])

    #print("Lendo grafo...")
    g, n, m = read_clq(infile)

    #print("Reduzindo instância...")
    clq_to_cnf(g, n, m, k, infile, out)
