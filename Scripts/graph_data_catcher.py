from col import *

inst = read_col(sys.argv[1])
g = inst.g
print(g)
arestas_por_vertice = inst.m / inst.n

grau_medio = sum([ sum(g[i]) for i in range(inst.n) ]) / inst.n
maior_grau = max([ sum(g[i]) for i in range(inst.n) ])
menor_grau = min([ sum(g[i]) for i in range(inst.n) ])

print(grau_medio)