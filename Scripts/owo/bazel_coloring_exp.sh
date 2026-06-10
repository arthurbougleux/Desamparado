#!/bin/bash

if [ ! $(ls -d resp/) ]; then
    mkdir resp
fi;

RESPDIR=/home/arthur/Desktop/Desamparado/Scripts/resp
EXPDIR=/home/arthur/Desktop/Desamparado/Instancias/Coloring/exp
GBBSCONV=to_gbbs.py
SOLVER="/home/arthur/Desktop/Desamparado/Instancias/gbbs/bazel-bin/benchmarks/GraphColoring/Hasenplaugh14/GraphColoring_main"


for file in $EXPDIR/*.col; do

    tmp="${file##*/}"
    nome="${tmp%".col"}"
    echo $nome...
    

    python3 "$GBBSCONV" $file $nome.gbbs

    numactl -i all $SOLVER -rounds 1 -s -m -stats -src $nome.gbbs > $nome.gbbs.sol

    line=($(cat best_scores_gcp.txt | grep $nome))
    k=${line[1]}

    python3 col.py $file $nome.cnf $k

    for solver in "kissat-original"; do

        echo "-- Solver:$solver --" >> $solver.sol
        echo "-- $k-Coloring --" >> $solver.sol

        ./$solver --relaxed --time=24 $nome.cnf  >> $solver.sol 2>&1
        echo "$solver started"

        out=$(python3 verify_col.py $file $solver.sol $k)
        echo "-- Correto: " $out " --" >> $solver.sol
        
    done

    mkdir $nome

    mv *.cnf $nome/
    mv *.sol $nome/
    mv *.gbbs $nome/
    mv $nome/ resp/

done