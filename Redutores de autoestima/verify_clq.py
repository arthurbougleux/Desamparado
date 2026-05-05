from clq import *
import sys

verb = False
if "v" in sys.argv or "-v" in sys.argv:
    verb = True


def read_sol(file, k):

    with open(file, "r") as fsol:

        sol = []

        for line in fsol:

            if not line.startswith("v "): continue

            posvals = list(filter(lambda x: x > 0, map(int, line.split()[1:])))

            for var in posvals:
                no, _ = unpack_lit(var, k)
                sol.append(no)

        return sol


k = int(sys.argv[3])

g, n, _ = read_clq(sys.argv[1])
sol = read_sol(sys.argv[2], k)

if verb:
    print("N: ", n, " K: ", k)
    print(sol)

if len(sol) < k:
    print(False)
    exit()


correto = True
for i in sol:
    for j in sol:

        if i != j and ((not g[i][j]) or (not g[j][i])):
            correto = False
            break
    
    if not correto:
        break


print(correto)
