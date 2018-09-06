#!/bin/sh

export KMP_AFFINITY=compact,1,0,granularity=fine
export OMP_NUM_THREADS=56
export KMP_BLOCKTIME=1

python train.py --train-manifest data/libri_train_manifest.csv --val-manifest data/libri_val_manifest.csv --cuda
