from types import SimpleNamespace as Namespace
import sys

def read_stree(filename):

    file = open(filename, "r")


    while True:

        l = file.readline()

        if l.lower().startswith('section graph'):
            n = int(file.readline().split()[1])
            m = int(file.readline().split()[1])
            break

        if not l : exit(1)

    g = [ [0 for _ in range(n)] for _ in range(n) ]
    for l in file:

        if l.lower().startswith('end'):
            break
        if l == '\n' : continue

        n1, n2, w = list(map(int, l.split()[1:]))
        n1 -= 1; n2 -= 1

        g[n1][n2] = w
        g[n2][n1] = w



    t = []
    while True:
        l = file.readline()

        if l.lower().startswith('section terminals'):
            k = int(file.readline().split()[1])
            break
        
    for l in file:

        if l.lower().startswith('end'):
            break
        if l == '\n' : continue

        t.append(int(l.split()[1])-1)

    root = min(t)

    file.close()
    return Namespace(g=g, n=n, m=m, k=k, t=t, root=root)


#O nó i é pai de j
def p(i,j, inst):
    return str((i*inst.n) + j)

#O nó i é ancestral de j
def a(i,j, inst):
    return str((inst.n**2) + (i*inst.n) + j)

def y(i,j, inst):
    return str((2 * inst.n**2) + (i*inst.n) + j)

def calc_nvars(inst):
    return 3 * inst.n**2    

inst = read_stree(sys.argv[1])



for i in range(inst.n):
    for j in range(inst.n):
        print(p(i,j,inst))
print()
for i in range(inst.n):
    for j in range(inst.n):
        print(a(i,j,inst))
print()
for i in range(inst.n):
    for j in range(inst.n):
        print(y(i,j,inst))


def everyone_has_a_parent(file, inst):
    
    for i in range(inst.k):
        if inst.t[inst.k] == inst.root : continue
    
        for j in range(inst.n):
            
            pass