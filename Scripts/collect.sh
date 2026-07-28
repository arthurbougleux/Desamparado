#!/bin/bash

out="../resp.csv"
gbbs_out=".gbbs.sol"
cd resp

touch $out
echo "Nome,N,M,K,GBBS,Tempo GBBS,Kissat,Tempo,Kissat-Mab,Tempo,hKis,Tempo," > $out

for dir in $( ls -d */ ); do

    inst="${dir%"/"}"
    pref=$dir$inst

    n=$(cat $pref$gbbs_out | grep "### n:" | grep -o '[0-9]\+')
    m=$(cat $pref$gbbs_out | grep "### m:" | grep -o '[0-9]\+')

    gbbs_time=$(cat $pref$gbbs_out | grep "### Running Time:" | grep -Eo '[0-9]+\.[0-9]+')
    gbbs_colors=$(cat $pref$gbbs_out | grep "num_colors =" | grep -o '[0-9]\+')
    gbbs_colors=$(echo $gbbs_colors+1 | bc )
    gbbs_right=$(cat $pref$gbbs_out | grep "Correto" | grep -Eo 'True|False' )
    
    k=$gbbs_colors

    gambiarra=$dir"kissat-original.sol"
    kissat_right=$(cat $gambiarra | grep "Correto" | grep -Eo 'True|False' )
    kissat_time=$(cat $gambiarra | grep "Tempo de CPU total" | grep -Eo '[0-9]+\.[0-9]+')

    gambiarra=$dir"kissat-mab-dc.sol"
    mabdc_right=$(cat $gambiarra | grep "Correto" | grep -Eo 'True|False' )
    mabdc_time=$(cat $gambiarra | grep "Tempo de CPU total" | grep -Eo '[0-9]+\.[0-9]+')

    gambiarra=$dir"hKis.sol"
    hkis_right=$(cat $gambiarra | grep "Correto" | grep -Eo 'True|False' )
    hKis_time=$(cat $gambiarra | grep -oP 'Tempo de CPU total = \K[0-9.]+' | paste -sd+ - | bc)

    
    echo $inst,$n,$m,$gbbs_colors,$gbbs_right,$gbbs_time,$kissat_right,$kissat_time,$mabdc_right,$mabdc_time,$hkis_right,$hKis_time, >> $out


done
