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

        ./$solver $nome.cnf >> $nome.out

    done

    rm $nome.cnf

    mv $file clq_done/
    mv $nome.out logs/

done
