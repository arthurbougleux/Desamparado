#!/bin/bash

mkdir hc_done
mkdir resp

for file in *.hcp; do
    nome="${file%".hcp"}"
    echo $nome...

    python3 hc.py $file $nome.cnf

    for solver in "kissat-original" "kissat-mab-dc"; do

        echo "-- Solver:$solver --" > $solver.sol
        echo "-- Ciclo Hamiltoniano --" >> $solver.sol

        ./$solver -q --relaxed --time=300 $nome.cnf >> $solver.sol 2>&1 &
        echo "$solver started"

    done

    #echo "-- Solver:hkis --" > $nome.hkis
    #echo "-- Ciclo Hamiltoniano --" >> $nome.hkis

    #./starexec_run_bva $nome.cnf dummy.out >> $nome.hkis 2>&1 &
    #echo "hkis started"

    wait $(jobs -p)
    echo "$nome done"

    rm $nome.cnf
    rm *.drat
    
    mkdir $nome

    cp $file $nome/
    mv *.sol $nome/
    mv $nome resp/

    mv $file hc_done/

done
