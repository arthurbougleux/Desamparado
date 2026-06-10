import graphviz as pg

def mato_dot(m):

    resp = pg.Graph()

    for n in range(len(m)):
        resp.node(str(n))

    for i in range(len(m)):
        for j in range(len(m[i])):
            if m[i][j]:
                resp.edge(str(i),str(j))
    
    return resp