mkdir col_done

for file in *.col; do
    nome="${file%".col"}"
    echo $nome...

    line=($(cat best_scores_gcp.txt | grep $nome))
    k=${line[1]}
    
    python3 col.py $file $nome.cnf $k

    for solver in "kissat" "kissat-mab-dc"; do

        echo "-- Solver:$solver --" >> $nome.out
        echo "-- $k-Coloring --" >> $nome.out

        ./$solver $nome.cnf >> $nome.out

    done

    rm $nome.cnf
    mv $file col_done/

done