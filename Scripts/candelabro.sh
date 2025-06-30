mkdir hc_done

for file in *.hcp; do
    file="${file%".hcp"}"
    echo $file...

    python3 hc.py $file".hcp" tmp-$file.cnf
    minisat -no-solve -dimacs=$file.cnf tmp-$file.cnf

    rm tmp-$file.cnf
    
    for solver in "hKis" "kissat" "kissat-mab-dc"; do

        echo "-- Solver:$solver --" >> $file.out

        ./$solver $file.cnf >> $file.out
    done

    rm $file.cnf
    mv $file.hcp hc_done/

done
