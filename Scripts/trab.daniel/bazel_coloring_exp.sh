#!/bin/bash

if [ ! $(ls -d resp/) ]; then
    mkdir resp
fi;

RESPDIR=/home/arthur/Desktop/Desamparado/Scripts/resp
EXPDIR=/home/arthur/Desktop/Desamparado/Instancias/Coloring/exp
GBBSCONV=to_gbbs.py
SOLVER="/home/arthur/Desktop/Desamparado/Instancias/gbbs/bazel-bin/benchmarks/GraphColoring/Hasenplaugh14/GraphColoring_main"


for file in $EXPDIR/*.col; do

    tmp="${file##*/}"
    nome="${tmp%".col"}"
    echo $nome...
    
    ##
    python3 "$GBBSCONV" $file $nome.gbbs 
    gbbs_conv_id=$(python3 db_insert.py gbbs_conv "$GBBSCONV" $file $nome.gbbs)
    
    ##
    numactl -i all $SOLVER -rounds 1 -s -m -stats -src $nome.gbbs > $nome.gbbs.sol
    out=$(python3 verify.py col $file $nome.gbbs.sol --gbbs)
    echo "-- Correto: " $out " --" >> $nome.gbbs.sol
    gbbs_solve_id=$(python3 db_insert.py gbbs_solve Hasenplaugh14 $gbbs_conv_id "-rounds 1 -s -m -stats -src" $nome.gbbs $nome.gbbs.sol $out)


    ##
    k=$(python3 color_catcher.py $nome.gbbs.sol)
    count_k_id=$(python3 db_insert.py count_k color_catcher $gbbs_solve_id $file $nome.gbbs)

    ##
    python3 reduc.py col $file $nome.cnf -k $k
    sat_reduc_id=$(python3 db_insert.py sat_reduc reduc.py $count_k_id "col -k $k" $file $nome.cnf)

    ##
    sat_solve_ids=()
    for solver in "kissat-original" "kissat-mab-dc"; do

        echo "-- Solver:$solver --" >> $solver.sol
        echo "-- $k-Coloring --" >> $solver.sol

        ##
        ./$solver --relaxed $nome.cnf  >> $solver.sol 2>&1
        echo "$solver started"

        ##
        out=$(python3 verify.py col $file $solver.sol -k $k)
        echo "-- Correto: " $out " --" >> $solver.sol

        sat_solve_ids+=$(python3 db_insert.py sat_solve $solver $sat_reduc_id "--relaxed" $nome.cnf $solver.sol $out )
        sat_solve_ids+=" "
        
    done

    ##
    solver="hKis"
    echo "-- Solver:$solver --" >> $solver.sol
    echo "-- $k-Coloring --" >> $solver.sol

    ./starexec_run_bva $nome.cnf tmp >> $solver.sol 2>&1
    echo "$solver started"
    
    ##
    out=$(python3 verify.py col $file $solver.sol -k $k)
    echo "-- Correto: " $out " --" >> $solver.sol
    sat_solve_ids+=$(python3 db_insert.py sat_solve starexec_run_bva $sat_reduc_id "tmp" $nome.cnf $solver.sol $out )
    sat_solve_ids+=" "

    mkdir $nome

    mv *.cnf $nome/
    mv *.sol $nome/
    mv *.gbbs $nome/
    mv $nome/ resp/
    rm *.drat

done

./collect.sh
collector_id+=$(python3 db_insert.py gen_csv resp.csv)
#echo $collector_id

read -ra ids <<< "$sat_solve_ids"

for id in "${ids[@]}"; do
    #echo $id
    #echo $collector_id
    python3 db_insert.py used_in_gen_csv $id $collector_id 1> /dev/null
done