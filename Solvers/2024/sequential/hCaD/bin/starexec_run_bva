#!/bin/sh
#exec ./cadical --target=0 --walk=false $1

SBVA=./bva
SOLVER=./cadical
SOLVERARGS="target=0 walk=false"

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
