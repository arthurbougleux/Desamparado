#!/bin/bash

mkdir col_done
mkdir logs

for file in *.col; do
    nome="${file%".col"}"
    echo $nome...

    line=($(cat best_scores_gcp.txt | grep $nome))
    k=${line[1]}

    python3 col.py $file $nome.cnf $k

    for solver in "kissat" "kissat-mab-dc"; do

        echo "-- Solver:$solver --" >> $nome.out
        echo "-- $k-Coloring --" >> $nome.out

        echo "Solver: $solver"

        ./$solver --sat $nome.cnf >> $nome.out

    done

    mv $nome.out hKis/
    mv $nome.cnf hKis/
    cd hKis/

    echo "-- Solver:hKis --" >> $nome.out
    echo "-- $k-Coloring --" >> $nome.out
    
    ./starexec_run_bva $nome.cnf dummy.out >> $nome.out

    mv $nome.out ../
    mv $nome.cnf ../
    cd ../

    rm $nome.cnf

    mv $file col_done/
    mv $nome.out logs/

done
