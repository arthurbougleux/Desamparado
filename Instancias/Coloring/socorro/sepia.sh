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

        echo "-- Solver:$solver --" >> $solver.sol
        echo "-- $k-Coloring --" >> $solver.sol

        ./$solver --relaxed --time=120 $nome.cnf  >> $solver.sol 2>&1 &
        echo "$solver started"

    done

    #echo "-- Solver:hkis --" >> $nome.hkis
    #echo "-- $k-Coloring --" >> $nome.hkis

    #./starexec_run_bva $nome.cnf dummy.out >> $nome.hkis 2>&1 &
    #echo "hkis started"


    wait $(jobs -p)
    echo "$nome done"

    for solver in "kissat-original" "kissat-mab-dc"; do

    
    out=$(python3 verify_col.py $file $solver.sol $k)
    echo "-- Correto: " $out " --" >> $solver.sol

    done
    rm $nome.cnf
    rm *.drat
    
    mkdir $nome

    cp $file $nome/
    mv *.sol $nome/
    mv $nome resp/

    mv $file col_done/

done
