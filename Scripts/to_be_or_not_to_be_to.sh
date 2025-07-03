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

        ./$solver $nome.cnf >> $nome.out

    done

    rm $nome.cnf

    mv $file hc_done/
    mv $nome.out logs/

done
