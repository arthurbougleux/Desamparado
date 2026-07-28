from col import *

inst = read_col(sys.argv[1])
g = inst.g
print(g)
arestas_por_vertice = inst.m / inst.n

grau_medio = sum([ sum(g[i]) for i in range(inst.n) ]) / inst.n

print(grau_medio)