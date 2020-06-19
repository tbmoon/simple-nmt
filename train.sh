#!/bin/bash
#__________________________________________________________________________________________________

# DO NOT use GPU IDs (gpu_id) other than 3 for DGX. We only allowed to use gpu_id=3.
gpu_id="3"
data_dir="../nlp_preprocessing/data"

#__________________________________________________________________________________________________

if [ ! -d "models" ]; then
    mkdir models
fi

#__________________________________________________________________________________________________

python train.py --model_fn ./models/enko.pth --train ./data/corpus.train --valid ./data/corpus.valid --lang enko --gpu_id ${gpu_id} --batch_size 64 --n_epochs 15 --dropout .2 --word_vec_size 512 --hidden_size 768 --n_layers 4 --lr 1. --lr_step 1 --lr_gamma .5 --lr_decay_start 10 --rl_n_epochs 10
