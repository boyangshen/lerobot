
HF_USER=boyangs235
DATASET_NAME=so100_Put_Cube_Into_Purple_Area_v1

python lerobot/scripts/control_robot.py \
  --robot.type so100 \
  --control.type record \
  --control.fps 30 \
  --control.single_task "Grasp cube and put it into the purple area." \
  --control.repo_id ${HF_USER}/${DATASET_NAME} \
  --control.tags '["so100","tutorial"]' \
  --control.video true \
  --control.num_image_writer_processes 4 \
  --control.num_image_writer_threads_per_camera 4 \
  --control.warmup_time_s 3 \
  --control.episode_time_s 600 \
  --control.reset_time_s 3 \
  --control.num_episodes 10 \
  --control.resume true \
  --control.push_to_hub false \
  --robot.type so100 \
  --robot.cameras \
  '{
  "gripper_camera":
    {"type": "opencv","camera_index": 0,"fps": 30,"width": 640,"height": 480},
  "global_camera":
    {"type": "opencv","camera_index": 2,"fps": 30,"width": 640,"height": 480},
  "top_camera":
    {"type": "opencv","camera_index": 4,"fps": 30,"width": 640,"height": 480}
  }'
