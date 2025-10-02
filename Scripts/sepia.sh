#!/bin/bash

mkdir col_done
mkdir logs

for file in *.col; do
    nome="${file%".col"}"
    echo $nome...

    line=($(cat best_scores_gcp.txt | grep $nome))
    k=${line[1]}

    python3 col.py $file $nome.cnf $k


    for solver in "kissat-original" "kissat-mab-dc"; do

        echo "-- Solver:$solver --" >> $nome.$solver
        echo "-- $k-Coloring --" >> $nome.$solver

        ./$solver --sat $nome.cnf >> $nome.$solver 2>&1 &
        echo "$solver started"

    done

    echo "-- Solver:hkis --" >> $nome.hkis
    echo "-- $k-Coloring --" >> $nome.hkis

    ./starexec_run_bva $nome.cnf dummy.out >> $nome.hkis 2>&1 &
    echo "hkis started"


    wait $(jobs -p)
    echo "$nome done"

    rm $nome.cnf
    rm *.drat

    mv $nome.kissat-original logs/
    mv $nome.kissat-mab-dc logs/
    mv $nome.hkis logs/

    mv $file col_done/

done
