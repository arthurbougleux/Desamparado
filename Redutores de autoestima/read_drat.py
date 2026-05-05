from hc import *

n = int(sys.argv[2])

def var(i,j):
    return str((i*n)+j + 1)

with open(sys.argv[1]) as f:

    for line in f:
        if line[0] in "cvs-":
            continue
        
        
        if line.startswith("d"):
            print("Remove: ", end=" ")
            line = line[2:]
        else:
            print("Adiciona: ", end=" ")

        print(line)
        

        for lit in map(int, line.split()):

            if lit == 0:
                break

            pos, no = unpack_lit(lit, n)
            print("Pos: ", pos, "Nó: ", no, "Literal: ", var(pos, no))

        print("###")
        print()