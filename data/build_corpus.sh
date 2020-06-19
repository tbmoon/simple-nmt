#!/bin/bash
  
ln -s "../../nlp_preprocessing/data/aligned.en.refined.tok.bpe.txt" "corpus.en"
ln -s "../../nlp_preprocessing/data/aligned.ko.refined.tok.bpe.txt" "corpus.ko"

python build_corpus.py --input corpus --lang enko --output corpus

