HF_USER=boyangs235
JOB_NAME=act_so100_Put_Cube_Into_Purple_Area_v1

python lerobot/scripts/train.py \
  --dataset.repo_id ${HF_USER}/so100_Put_Cube_Into_Purple_Area_v1 \
  --policy.type act \
  --output_dir outputs/train/$JOB_NAME \
  --job_name $JOB_NAME \
  --policy.device cuda \
  --wandb.enable true \
  --batch_size 12 \
  --steps 60_000 \
  --log_freq 10 \
  --save_freq 6000 \