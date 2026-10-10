import sys
from col import *

inst = read_col(sys.argv[1])
g = inst.g
n = inst.n

# Isso aqui foi copilotado porque é quase impossível entender o que eu escrevi errado rodando coisas com Bazel
def matrix_to_gbbs(matrix, output_filename):

    n = len(matrix)
    offsets = []
    edges = []
    current_offset = 0

    for i in range(n):

        offsets.append(current_offset)

        for j in range(n):
            if matrix[i][j]:

                edges.append(j)
                current_offset += 1


    m = len(edges)

    with open(output_filename, "w") as f:

        f.write("AdjacencyGraph\n")
        f.write(f"{n}\n")
        f.write(f"{m}\n")

        for offset in offsets:
            f.write(f"{offset}\n")

        for edge in edges:
            f.write(f"{edge}\n")

matrix_to_gbbs(g, sys.argv[2])