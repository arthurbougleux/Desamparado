#!/bin/bash

out="../resp.csv"
gbbs_out=".gbbs.sol"
cd resp

touch $out
echo "Nome,N,M,K,Cores GBBS,Tempo GBBS,Tempo Kissat" > $out

for dir in $( ls -d */ ); do

    inst="${dir%"/"}"
    pref=$dir$inst

    n=$(cat $pref$gbbs_out | grep "### n:" | grep -o '[0-9]\+')
    m=$(cat $pref$gbbs_out | grep "### m:" | grep -o '[0-9]\+')

    line=($(cat ../best_scores_gcp.txt | grep $inst))
    k=${line[1]}

    gbbs_time=$(cat $pref$gbbs_out | grep "### Running Time:" | grep -Eo '[0-9]+\.[0-9]+')
    gbbs_colors=$(cat $pref$gbbs_out | grep "num_colors =" | grep -o '[0-9]\+')
    
    gambiarra=$dir"kissat-original.sol"
    kissat_time=$(cat $gambiarra | grep "Tempo de CPU total" | grep -Eo '[0-9]+\.[0-9]+')
    echo $inst,$n,$m,$k,$gbbs_colors,$gbbs_time,$kissat_time >> $out


done