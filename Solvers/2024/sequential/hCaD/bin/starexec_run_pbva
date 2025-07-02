#!/bin/sh
#exec ./cadical --psids=1 --target=2 --walk=false --chrono=true $1

SBVA=./bva
SOLVER=./cadical
SOLVERARGS="psids=1 target=2 walk=false chrono=true"

OUTER_TIMEOUT=400
INNER_TIMEOUT=200

python3 wrapper.py \
    --input $1 \
    --output $2 \
    --bva $SBVA \
    --t1 $INNER_TIMEOUT \
    --t2 $OUTER_TIMEOUT \
    --solver $SOLVER \
    --solverargs $SOLVERARGS
