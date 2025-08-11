fin = open('tmp', 'r')
out = open('tmp2', 'w')

for l in fin:

        line = l.split()
        if len(line) == 4:
                r = line[1] + " " + line[3]
        else:
                r = " ".join(line[1:])
        r += "\n"
        out.write(r)

fin.close()
out.close()
