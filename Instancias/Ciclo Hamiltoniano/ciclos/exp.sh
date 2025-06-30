for file in *.hcp; do
    file="${file%".hcp"}"
    echo $file...
    python3 hc.py $file".hcp" tmp-$file.cnf
    ./minisat -no-solve -dimacs=$file.cnf tmp-$file.cnf
    #./lingeling -s tmp-$file -o $file.cnf
    rm tmp-$file.cnf
    
    for solver in "hKis" "kissat" "kissat-mab-dc"; do

        echo "\n-- Solver:$solver --\n" >> $file.out

        /bin/time -o $solver.time -f "\nUser: %U\nSystem: %S\nReal: %e\n" ./$solver $file.cnf >> $file.out
        cat $solver.time >> $file.out
        rm $solver.time

    done

    rm $file.cnf

done
