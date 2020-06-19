#!/bin/bash
#__________________________________________________________________________________________________

cat ./data/corpus.test.en | python translate.py --model ./models/enko.03.3.02-20.56.2.86-17.49.pth --gpu_id -1
