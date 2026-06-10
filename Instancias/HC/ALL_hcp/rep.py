import sys

f = open(sys.argv[1], "r")

while not f.readline().startswith("TOUR_"):
    pass

nos = []
for line in f:

    for v in map(int, line.split()):

        if v < 0:
            print("Fim")
            exit(1)
        
        if v in nos:
            print("Repete: " + str(v))
            
        else:

            nos.append(v)