mkdir hc_done

for file in *.hcp; do
    nome="${file%".hcp"}"
    echo $nome...

    python3 hc.py $file tmp-$nome.cnf
    minisat -no-solve -dimacs=$nome.cnf tmp-$nome.cnf

    rm tmp-$nome.cnf
    
    for solver in "kissat" "kissat-mab-dc"; do

        echo "-- Solver:$solver --" >> $nome.out

        ./$solver $nome.cnf >> $nome.out
    done

    rm $nome.cnf
    mv $file hc_done/

done
