import sys
from hc import *
from mass_test import *

if sys.argv[1].endswith(".csv"):
        g, n, m = read_bel(sys.argv[1])
else:
        g, n, m = read_hcp(sys.argv[1])
dot = matrix_to_dot(g)

if len(sys.argv) >= 2:
        outfile = sys.argv[2] + ".png"

dot.render("dummydummy", cleanup=True, outfile=outfile)
