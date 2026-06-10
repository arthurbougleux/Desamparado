from col import *

g, n, m = read_col("1-FullIns_3.col")
print(g)

colors = [ 0 for _ in range(n) ]

f = open("1-FullIns_3.gbbs.sol")

i = 0
while True:
    if f.readline().startswith("num_colors") : break

for line in f:

    if line.startswith("###") : break

    _, c = line.split()
    colors[i] = int(c)
    i +=1
    print(colors)

f.close()


correto = True

for i in range(n):
    for j in range(n):

        if g[i][j] and colors[i] == colors[j]:
            correto=False
            break
    if not correto : break

print(correto)