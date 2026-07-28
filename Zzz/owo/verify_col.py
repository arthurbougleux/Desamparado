from col import *
import sys

verb = False
if "v" in sys.argv or "-v" in sys.argv:
    verb = True


def read_sol(file, k):

    with open(file, "r") as fsol:

        sol = {}

        for line in fsol:

            if not line.startswith("v "): continue

            posvals = list(filter(lambda x: x > 0, map(int, line.split()[1:])))

            for var in posvals:
                no, cor = unpack_lit(var, k)
                sol[no] = cor

        return sol


k = int(sys.argv[3])

g, n, _ = read_col(sys.argv[1])
sol = read_sol(sys.argv[2], k)

if verb:
    print(n)
    print(sol)


if len(sol.keys()) < n:
    print(False)
    exit()


correto = True
for i in range(len(g)):

    c1 = sol[i]

    for j in range(len(g)):

        if g[i][j] and sol[j] == c1:
            correto = False
            break
    
    if not correto:
        break


print(correto)
