import sys
from col import *

sol = read_gbbs_sol(sys.argv[1])
print(len(set(sol.values())))