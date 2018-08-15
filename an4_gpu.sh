#!/bin/sh

ARGS=""
if [ "$1" == "prof" ]; then
    ARGS="$ARGS --prof"
fi

python train.py --train-manifest data/an4_train_manifest.csv --val-manifest data/an4_val_manifest.csv --epochs 1 $ARGS --cuda
#python -m cProfile -o output.pstats train.py --train-manifest data/an4_train_manifest.csv --val-manifest data/an4_val_manifest.csv --epochs 1
# to view cprofile result
# gprof2dot -f pstats output.pstats | dot -Tpng -o output.png
