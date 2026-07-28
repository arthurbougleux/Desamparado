from hc import *
import sys

verb = False
if "v" in sys.argv or "-v" in sys.argv:
    verb = True

def read_sol(file, n):

    fsol = open(file, "r")

    sol = []
    for l in fsol:

        if (l.startswith("v ")):

            if verb: print(l)

            posvals = list(filter(lambda x: x > 0, map(int, l.split()[1:])))

            for var in posvals:
                pos, no = unpack_lit(var, n)
                sol.append({"pos":pos, "no":no})

    sol.sort(key=lambda x : x["pos"])
    return sol


g, n, _ = read_instance(sys.argv[1])
sol = read_sol(sys.argv[2], n)

if len(sol) < n:
    print(False)
    exit()

correto = True
for i in range(len(sol)):

    n1 = sol[i]["no"]
    n2 = sol[(i+1)%n]["no"]
    
    if not (g[n1][n2] or g[n2][n1]):
        correto = False
        break

if verb:

    for l in sol:
        print(l["no"], end=" ")
    print()

    if not correto:
        print("Não é ciclo")
    else:
        print("Ciclo")

print(correto)