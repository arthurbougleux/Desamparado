#!/bin/bash

mkdir clq_done
mkdir logs

for file in *.clq; do
    nome="${file%".clq"}"
    echo $nome...

    line=($(cat knownok | grep $nome))
    k=${line[1]}
    
    python3 clq.py $file $nome.cnf $k

    for solver in "kissat" "kissat-mab-dc"; do

        echo "-- Solver:$solver --" >> $nome.out
        echo "-- $k-CLIQUE --" >> $nome.out

        echo "Solver: $solver"

        ./$solver --sat $nome.cnf >> $nome.out

    done

    echo "-- Solver:hKis --" >> $nome.out
    echo "-- $k-Coloring --" >> $nome.out

    ./startexec_run_bva $nome.cnf dummy.out >> $nome.out

    rm $nome.cnf
    rm dummy.out

    mv $file col_done/
    mv $nome.out logs/

done
