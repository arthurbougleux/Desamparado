#!/bin/bash

mkdir hc_done
mkdir logs

for file in *.csv; do
    nome="${file%".csv"}"
    echo $nome...

    python3 hc.py $file $nome.cnf

    for solver in "kissat-original"; do

        echo "-- Solver:$solver --" >> $nome.$solver
        echo "-- Ciclo Hamiltoniano --" >> $nome.$solver

        ./$solver $nome.cnf >> $nome.$solver 2>&1 &
        echo "$solver started"

    done

    wait $(jobs -p)
    echo "$nome done"

    #rm $nome.cnf
    #rm *.drat

    mv $nome.kissat-original logs/

    mv $file hc_done/

done
