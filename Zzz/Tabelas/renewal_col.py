import os
import pathlib
import numpy as np

from col import *

import pandas as pd

path = {
    "inst" : "/instancias",
    "hcp" : "/hcp",
    "col" : "/col",
    "clq" : "/clq",
    "col_score" : "/best_scores_gcp.txt"
}

inst_dir = os.path.abspath(os.getcwd()) + path["inst"] + path["col"]

class Instancia:

    def __init__(self, nome, no, edge, k, vars, clauses):
        self.nome = nome
        self.no = no
        self.edge = edge
        self.k = k
        self.vars = vars
        self.clauses = clauses

l_insts = []
for i, file in enumerate(filter(lambda x: x.endswith(".col"), os.listdir(inst_dir))):

    file_path = inst_dir + "/" + file
    print(file)
    
    g, n, m = read_col(file_path)

    fscore = open(inst_dir + path["col_score"])
    for line in fscore:
        l = line.split()
        if l[0] in file:
            k = int(l[1])
    fscore.close()

    nvars = calc_nvars(n, k)
    nclauses = calc_nclauses(g, n, m, k)

    print(nvars)
    print(nclauses)

    l_insts.append(Instancia(file, n, m, k, nvars, nclauses))

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
t["Cores"] = k_col
t["Variáveis"] = var_col
t["Clausulas"] = clause_col

w = pd.ExcelWriter("col.xlsx", mode="w")

t.to_excel(w, "coloração", index=False)

w.close()

