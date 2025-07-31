#!/bin/bash

mkdir hc_done
mkdir logs

for file in *.hcp; do
    nome="${file%".hcp"}"
    echo $nome...

    python3 hc.py $file $nome.cnf

    for solver in "kissat" "kissat-mab-dc"; do

        echo "-- Solver:$solver --" >> $nome.out
        echo "-- Hamiltonian Cycle --" >> $nome.out

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
