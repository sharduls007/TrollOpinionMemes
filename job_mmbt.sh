#!/bin/sh
python3 train.py --batch_sz 16 --gradient_accumulation_steps 40 \
 --savedir './mmbt/out_dir_mmbt/'\
 --data_path './dataset/' \
 --glove_path './dataset/glove.840B.300d.txt' \
 --embed_sz 300 \
 --task TrollOpinionMeme --task_type classification \
 --model mmbt --num_image_embeds 1 --freeze_txt 0 --freeze_img 5  \
 --patience 5 --dropout 0.1 --lr 2e-05 --warmup 0.1 --max_epochs 20 --seed 1 --name mmbt \
 --max_seq_len 30