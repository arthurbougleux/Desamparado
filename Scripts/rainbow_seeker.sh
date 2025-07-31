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

        echo "$solver started"
        ./$solver $nome.cnf >> $nome.$solver 2>&1 &

    done

    echo "-- Solver:hKis --" >> $nome.hKis
    echo "-- $k-Coloring --" >> $nome.hKis

    echo "hKis started"
    ./starexec_run_bva $nome.cnf dummy.out >> $nome.hKis 2>&1 &


    wait $(jobs -p)
    echo "$nome done"


    cat $nome.kissat-original >> $nome.out
    cat $nome.kissat-mab-dc >> $nome.out
    cat $nome.hKis >> $nome.out

    rm $nome.kissat-original
    rm $nome.kissat-mab-dc
    rm $nome.hKis

    rm $nome.cnf


    mv $file col_done/
    mv $nome.out logs/

done
