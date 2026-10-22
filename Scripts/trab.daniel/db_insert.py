"""
Uso:
    from db_insert import inserir
    inserir("transformacao_1", ["to_gbbs.py", "grafo.col", "grafo.gbbs"])

Os valores seguem a ordem das colunas (sem 'id' e 'controle', que são
preenchidas automaticamente pelo banco).

Requeriments: pip install psycopg2-binary
"""

import os
import psycopg2
from psycopg2 import sql

# Configuração da conexão (pode ser sobrescrita por variáveis de ambiente)
DB_CONFIG = {
    "host":     os.getenv("PGHOST", "localhost"),
    "port":     int(os.getenv("PGPORT", 5432)),
    "dbname":   os.getenv("PGDATABASE", "postgres"),
    "user":     os.getenv("PGUSER", "postgres"),
    "password": os.getenv("PGPASSWORD", "159753")}

# Colunas de cada tabela, na ordem esperada da lista de valores
TABELAS = {
    "gbbs_conv": ["conversor", "input", "output"],
    "gbbs_solve": ["conversor", "anterior","argumentos", "input", "output", "correto"],
    "count_k": ["conversor", "anterior", "input", "output"],
    "sat_reduc": ["conversor", "anterior", "argumentos", "input", "output"],
    "sat_solve": ["conversor", "anterior", "argumentos", "input", "output", "correto"],
    "used_in_gen_csv": ["solver_id", "collector_id"],
    "gen_csv": ["output"] 
    }


def inserir(tabela: str, valores: list): # Removido o -> int estrito pois pode retornar None

    if tabela not in TABELAS:
        raise ValueError(f"Tabela desconhecida: {tabela}. Opções: {list(TABELAS)}")

    colunas = TABELAS[tabela]
    if len(valores) != len(colunas):
        raise ValueError(f"{tabela} espera {len(colunas)} valores {colunas}, recebeu {len(valores)}")

    tem_id = (tabela != "used_in_gen_csv")

    if tem_id:
        query = sql.SQL("INSERT INTO {tabela} ({cols}) VALUES ({vals}) RETURNING id").format(
            tabela=sql.Identifier(tabela), 
            cols=sql.SQL(", ").join(map(sql.Identifier, colunas)), 
            vals=sql.SQL(", ").join(sql.Placeholder() * len(colunas))
        )
    else:
        query = sql.SQL("INSERT INTO {tabela} ({cols}) VALUES ({vals})").format(
            tabela=sql.Identifier(tabela), 
            cols=sql.SQL(", ").join(map(sql.Identifier, colunas)), 
            vals=sql.SQL(", ").join(sql.Placeholder() * len(colunas))
        )

    with psycopg2.connect(**DB_CONFIG) as conn:
        with conn.cursor() as cur:
            cur.execute(query, valores)
            # Só tenta buscar o ID se o comando RETURNING foi executado
            novo_id = cur.fetchone()[0] if tem_id else None
    conn.close()
    return novo_id


if __name__ == "__main__":
    import sys

    # Linha de comando: python db_insert.py <tabela> <valor1> <valor2> ...
    # Para colunas BOOLEAN, use true/false.
    if len(sys.argv) < 3:
        print("Uso: python db_insert.py <tabela> <valor1> [valor2 ...]")
        sys.exit(1)

    def converter(v: str):
        low = v.lower()
        if low in ("true", "t", "correto", "1"):
            return True
        if low in ("false", "f", "incorreto", "0"):
            return False
        return v

    tabela, *args = sys.argv[1:]
    # Converte para bool apenas a coluna 'correto'
    colunas = TABELAS.get(tabela, [])
    vals = [
        converter(v) if i < len(colunas) and colunas[i] == "correto" else v
        for i, v in enumerate(args)
    ]
    print(inserir(tabela, vals))
