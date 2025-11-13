HF_USER=boyangs235
JOB_NAME=act_so100_Put_Cube_In_Bowl_v2

python lerobot/scripts/control_robot.py \
  --robot.type so100 \
  --control.type record \
  --control.fps 30 \
  --control.single_task "Grasp cube and put it in the bowl." \
  --control.repo_id ${HF_USER}/eval_${JOB_NAME} \
  --control.tags '["tutorial"]' \
  --control.warmup_time_s 5 \
  --control.episode_time_s 30 \
  --control.reset_time_s 10 \
  --control.num_episodes 5 \
  --control.resume true \
  --control.push_to_hub false \
  --control.policy.path="/home/shenboyang/myProjects/re_lerobot/lerobot/outputs/train/act_so100_Put_Cube_In_Bowl_v2/checkpoints/last/pretrained_model" \
  --robot.cameras \
  '{
  "gripper_camera":
    {"type": "opencv","camera_index": 0,"fps": 30,"width": 640,"height": 480},
  "global_camera":
    {"type": "opencv","camera_index": 2,"fps": 30,"width": 640,"height": 480},
  "top_camera":
    {"type": "opencv","camera_index": 4,"fps": 30,"width": 640,"height": 480}
  }'