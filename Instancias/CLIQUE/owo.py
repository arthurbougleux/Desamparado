f = open("sizes", "r")
o = open("size", "w")
for l in f:

        s = l.split()[1:]
        o.write(" ".join(s) + "\n")

f.close()
o.close()
