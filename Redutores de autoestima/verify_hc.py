from hc import *
import itertools

g, n, _ = read_hcp("SH_64.hcp")

sol = []

fsol = open("sol", "r")

for l in fsol:

    if l.startswith("v "):

        parval = list(filter(lambda x: x > 0, map(int, l.split()[1:])))
        print(parval)

        for var in parval:
            pos = (var-1)//n
            no = (var-1)%n
            sol.append(no)

print(sol)
correto = True
for i in range(len(sol)-1):
        if not (g[sol[i]][sol[i+1]]):
            print(i)
            print(sol[i])
            correto = False
            break   

if not correto:
    print("Não é ciclo")
if correto:
     print("Ciclo")