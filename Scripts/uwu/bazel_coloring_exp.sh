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
    out=$(python3 verify.py col $file $nome.gbbs.sol --gbbs) 
    echo "-- Correto: " $out " --" >> $nome.gbbs.sol

    k=$(python3 color_catcher.py $nome.gbbs.sol)

    python3 reduc.py col $file $nome.cnf -k $k

    for solver in "kissat-original" "kissat-mab-dc"; do

        echo "-- Solver:$solver --" >> $solver.sol
        echo "-- $k-Coloring --" >> $solver.sol

        ./$solver --relaxed $nome.cnf  >> $solver.sol 2>&1
        echo "$solver started"

        out=$(python3 verify.py col $file $solver.sol -k $k)
        echo "-- Correto: " $out " --" >> $solver.sol
        
    done

    solver="hKis"
    echo "-- Solver:$solver --" >> $solver.sol
    echo "-- $k-Coloring --" >> $solver.sol

    ./starexec_run_bva $nome.cnf tmp >> $solver.sol 2>&1
    echo "$solver started"

    out=$(python3 verify.py col $file $solver.sol -k $k)
    echo "-- Correto: " $out " --" >> $solver.sol


    mkdir $nome

    mv *.cnf $nome/
    mv *.sol $nome/
    mv *.gbbs $nome/
    mv $nome/ resp/
    rm *.drat

done
