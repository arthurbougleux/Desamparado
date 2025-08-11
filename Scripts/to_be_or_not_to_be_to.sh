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

    echo "-- Solver:hkis --" >> $nome.hkis
    echo "-- Ciclo Hamiltoniano --" >> $nome.hkis

    echo "hkis started"
    ./starexec_run_bva $nome.cnf dummy.out >> $nome.hkis 2>&1 &


    wait $(jobs -p)
    echo "$nome done"

    rm $nome.cnf
    rm *.drat

    mv $nome.kissat-original logs/
    mv $nome.kissat-mab-dc logs/
    mv $nome.hkis logs/

    mv $file hc_done/

done
