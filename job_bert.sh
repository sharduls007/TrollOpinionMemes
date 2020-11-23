#!/bin/sh
python3 train.py --batch_sz 16 --gradient_accumulation_steps 40 \
 --savedir './mmbt/out_dir_bert/'\
 --data_path './dataset/' \
 --glove_path './dataset/glove.840B.300d.txt' \
 --embed_sz 300 \
 --task mmimdb --task_type classification \
 --model bert --num_image_embeds 1 --freeze_txt 0 --freeze_img 0  \
 --patience 5 --dropout 0.1 --lr 4e-08 --warmup 0.1 --max_epochs 20 --seed 1 --name bert \
 --hidden_sz 768 --max_seq_len 100