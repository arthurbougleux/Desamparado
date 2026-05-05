#!/bin/bash

cd resp

for dir in */; do

    nome = "${dir%"/"}"
    echo $nome

    cd $dir
    for sol in *.sol; do

        valid=$(python3 ../verify_hc.py $nome.??? $sol)
        echo $valid >> $sol

    done

    cd ..

done
