#!/bin/sh

python train.py --train-manifest data/libri_train_manifest.csv --val-manifest data/libri_val_manifest.csv --cuda
