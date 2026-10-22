import os
import glob
import subprocess
import shutil
from pathlib import Path

# Recupera variáveis de ambiente ou define valores padrão
EXPDIR = "/home/arthur/Desktop/Desamparado/Instancias/Coloring/exp"
GBBSCONV = "to_gbbs.py"
SOLVER = "/home/arthur/Desktop/Desamparado/Instancias/gbbs/bazel-bin/benchmarks/GraphColoring/Hasenplaugh14/GraphColoring_main"

# Garante que o diretório de resposta existe
os.makedirs("resp", exist_ok=True)

# Loop equivalente a: for file in $EXPDIR/*.col; do
for file_path in glob.glob(os.path.join(EXPDIR, "*.col")):
    file_path = Path(file_path)
    nome = file_path.stem  # Nome do arquivo sem a extensão .col
    print(f"{nome}...")

    gbbs_file = Path(f"{nome}.gbbs")
    sol_file = Path(f"{nome}.gbbs.sol")
    cnf_file = Path(f"{nome}.cnf")

    ## 1. Conversão para GBBS
    subprocess.run(["python3", GBBSCONV, str(file_path), str(gbbs_file)], check=True)

    ## 2. Inserção no banco: gbbs_conv
    res = subprocess.run(
        ["python3", "db_insert.py", "gbbs_conv", GBBSCONV, str(file_path), str(gbbs_file)],
        stdout=subprocess.PIPE, text=True, check=True
    )
    gbbs_conv_id = res.stdout.strip()

    ## 3. Execução do solver com numactl (redirecionando para $nome.gbbs.sol)
    with open(sol_file, "w") as f_out:
        subprocess.run(
            ["numactl", "-i", "all", SOLVER, "-rounds", "1", "-s", "-m", "-stats", "-src", str(gbbs_file)],
            stdout=f_out, check=True
        )

    ## 4. Verificação da solução gbbs
    res = subprocess.run(
        ["python3", "verify.py", "col", str(file_path), str(sol_file), "--gbbs"],
        stdout=subprocess.PIPE, text=True,
    )
    out = res.stdout.strip()

    ## 5. Append da verificação no arquivo de solução
    with open(sol_file, "a") as f_out:
        f_out.write(f"-- Correto:  {out}  --\n")

    ## 6. Inserção no banco: gbbs_solve
    res = subprocess.run(
        ["python3", "db_insert.py", "gbbs_solve", "Hasenplaugh14", gbbs_conv_id, "-rounds 1 -s -m -stats -src", str(gbbs_file), str(sol_file), out],
        stdout=subprocess.PIPE, text=True,
    )
    gbbs_solve_id = res.stdout.strip()

    ## 7. Captura de k
    res = subprocess.run(
        ["python3", "color_catcher.py", str(sol_file)],
        stdout=subprocess.PIPE, text=True,
    )
    k = res.stdout.strip()

    ## 8. Inserção no banco: count_k
    res = subprocess.run(
        ["python3", "db_insert.py", "count_k", "color_catcher", gbbs_solve_id, str(file_path), str(gbbs_file)],
        stdout=subprocess.PIPE, text=True,
    )
    count_k_id = res.stdout.strip()

    ## 9. Redução para CNF
    subprocess.run(["python3", "reduc.py", "col", str(file_path), str(cnf_file), "-k", k], check=True)

    ## 10. Inserção no banco: sat_reduc
    res = subprocess.run(
        ["python3", "db_insert.py", "sat_reduc", "reduc.py", count_k_id, f"col -k {k}", str(file_path), str(cnf_file)],
        stdout=subprocess.PIPE, text=True,
    )
    sat_reduc_id = res.stdout.strip()

    sat_solve_ids = []

    ## 11. Loop pelos solvers SAT principais
    for solver in ["kissat-original", "kissat-mab-dc"]:
        solver_sol_file = Path(f"{solver}.sol")
        
        with open(solver_sol_file, "a") as f_sol:
            f_sol.write(f"-- Solver:{solver} --\n")
            f_sol.write(f"-- {k}-Coloring --\n")

        with open(solver_sol_file, "a") as f_sol:
            subprocess.run(
                [f"./{solver}", "--relaxed", str(cnf_file)],
                stdout=f_sol, stderr=subprocess.STDOUT,
            )
        print(f"{solver} started")

        res = subprocess.run(
            ["python3", "verify.py", "col", str(file_path), str(solver_sol_file), "-k", k],
            stdout=subprocess.PIPE, text=True,
        )
        out = res.stdout.strip()

        with open(solver_sol_file, "a") as f_sol:
            f_sol.write(f"-- Correto:  {out}  --\n")

        res = subprocess.run(
            ["python3", "db_insert.py", "sat_solve", solver, sat_reduc_id, "--relaxed", str(cnf_file), str(solver_sol_file), out],
            stdout=subprocess.PIPE, text=True,
        )
        sat_solve_ids.append(res.stdout.strip())

    ## 12. Solver hKis
    solver = "hKis"
    solver_sol_file = Path(f"{solver}.sol")

    with open(solver_sol_file, "a") as f_sol:
        f_sol.write(f"-- Solver:{solver} --\n")
        f_sol.write(f"-- {k}-Coloring --\n")

    with open(solver_sol_file, "a") as f_sol:
        subprocess.run(
            ["./starexec_run_bva", str(cnf_file), "tmp"],
            stdout=f_sol, stderr=subprocess.STDOUT,
        )
    print(f"{solver} started")

    res = subprocess.run(
        ["python3", "verify.py", "col", str(file_path), str(solver_sol_file), "-k", k],
        stdout=subprocess.PIPE, text=True,
    )
    out = res.stdout.strip()

    with open(solver_sol_file, "a") as f_sol:
        f_sol.write(f"-- Correto:  {out}  --\n")

    res = subprocess.run(
        ["python3", "db_insert.py", "sat_solve", "starexec_run_bva", sat_reduc_id, "tmp", str(cnf_file), str(solver_sol_file), out],
        stdout=subprocess.PIPE, text=True,
    )
    sat_solve_ids.append(res.stdout.strip())

    ## 13. Organização de diretórios e arquivos
    nome_dir = Path(nome)
    nome_dir.mkdir(exist_ok=True)

    for p in glob.glob("*.cnf"):
        shutil.move(p, nome_dir / Path(p).name)
    for p in glob.glob("*.sol"):
        shutil.move(p, nome_dir / Path(p).name)
    for p in glob.glob("*.gbbs"):
        shutil.move(p, nome_dir / Path(p).name)

    target_resp_dir = Path("resp") / nome
    if target_resp_dir.exists():
        shutil.rmtree(target_resp_dir)
    shutil.move(str(nome_dir), "resp/")

    for p in glob.glob("*.drat"):
        try:
            os.remove(p)
        except OSError:
            pass

## 14. Pós-processamento e coleta final
subprocess.run(["./collect.sh"],)

res = subprocess.run(
    ["python3", "db_insert.py", "gen_csv", "resp.csv"],
    stdout=subprocess.PIPE, text=True,
)
collector_id = res.stdout.strip()

# Associa os IDs gerados ao CSV criado
for sid in sat_solve_ids:
    for sub_id in sid.split():
        subprocess.run(
            ["python3", "db_insert.py", "used_in_gen_csv", sub_id, collector_id],
            stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, check=True
        )