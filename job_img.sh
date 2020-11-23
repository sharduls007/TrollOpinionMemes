#!/bin/sh
python3 train.py --batch_sz 16 --gradient_accumulation_steps 40 \
 --savedir './mmbt/out_dir_img/'\
 --data_path './dataset/' \
 --glove_path './dataset/glove.840B.300d.txt' \
 --task mmimdb --task_type classification \
 --model img --num_image_embeds 1 --freeze_img 15 \
 --patience 5 --dropout 0.1 --lr 1e-07 --warmup 0.1 --max_epochs 20 --seed 1 --name img