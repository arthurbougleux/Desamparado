#!/bin/bash

mkdir hc_done
mkdir logs

for file in *.hcp; do
    nome="${file%".hcp"}"
    echo $nome...

    python3 hc.py $file $nome.cnf

    for solver in "kissat-original" "kissat-mab-dc"; do

        echo "-- Solver:$solver --" >> $nome.$solver
        echo "-- Ciclo Hamiltoniano --" >> $nome.$solver

        echo "$solver started"
        ./$solver $nome.cnf >> $nome.$solver 2>&1 &

    done

    echo "-- Solver:hKis --" >> $nome.hKis
    echo "-- Ciclo Hamiltoniano --" >> $nome.hKis

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


    mv $file hc_done/
    mv $nome.out logs/


done
