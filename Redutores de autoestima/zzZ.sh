python3 hc.py $1 $2 &&
./kissat-original -q --relaxed $2 > sol &&
python3 verify_hc.py $1 sol
