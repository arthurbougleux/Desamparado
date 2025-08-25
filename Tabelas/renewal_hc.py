import os
import pathlib
import numpy as np

from hc import *

import pandas as pd

path = {
    "inst" : "/instancias",
    "hcp" : "/hcp",
    "col" : "/col",
    "clq" : "/clq",
    "col_score" : "/best_scores_gcp.txt"
}

inst_dir = os.path.abspath(os.getcwd()) + path["inst"] + path["hcp"]

class Instancia:

    def __init__(self, nome, no, edge, k, vars, clauses):
        self.nome = nome
        self.no = no
        self.edge = edge
        self.k = k
        self.vars = vars
        self.clauses = clauses

l_insts = []
for i, file in enumerate(filter(lambda x: x.endswith(".hcp"), os.listdir(inst_dir))):

    file_path = inst_dir + "/" + file
    print(file)
    
    g = read_hcp(file_path)
    gl = np.matrix(g)
    n = len(g)
    m = gl.sum()

    print(n)
    print(m)

    print("Stuck calc")
    nvars = calc_nvars(n)
    nclauses = calc_nclauses(g, n)

    print(nvars)
    print(nclauses)

    l_insts.append(Instancia(file, n, m, n, nvars, nclauses))

l_insts.sort(key= lambda x: (x.no, x.edge, x.k, x.vars, x.clauses))
edge_col = pd.Series(); no_col = pd.Series(); var_col = pd.Series(); clause_col = pd.Series(); name_col = pd.Series(); k_col = pd.Series()

for j, i in enumerate(l_insts):
    edge_col[i] = i.edge
    no_col[i] = i.no
    k_col[i] = i.k
    var_col[i] = i.vars
    name_col[i] = i.nome
    clause_col[i] = i.clauses

t = pd.DataFrame()

t["Instância"] = name_col
t["Vértices"] = no_col
t["Arestas"] = edge_col
t["Variáveis"] = var_col
t["Clausulas"] = clause_col

w = pd.ExcelWriter("dummy.xlsx", mode="w")

t.to_excel(w, "ciclo", index=False)

w.close()

