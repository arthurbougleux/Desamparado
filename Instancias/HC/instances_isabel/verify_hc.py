from hc import *
import sys

def read_sol(file, n):

    fsol = open(file, "r")

    sol = []
    for l in fsol:

        if (l.startswith("v ")):
            print(l)

            posvals = list(filter(lambda x: x > 0, map(int, l.split()[1:])))

            for var in posvals:
                pos = (var-1)//n
                no = (var-1)%n
                sol.append({"pos":pos, "no":no})

    sol.sort(key=lambda x : x["pos"])
    return sol


g, n, _ = read_bel(sys.argv[1])

sol = read_sol(sys.argv[2], n)
print(sol)



correto = True
for i in range(len(sol)-1):

    n1 = sol[i]["no"]
    n2 = sol[i+1]["no"]

    if not g[n1][n2]:
        correto = False
        break

if not g[sol[len(sol)-1]["no"]][sol[0]["no"]]:
    correto = False



print("Corr: ", correto)

if not correto:
    print("Não é ciclo")
else:
     print("Ciclo")
