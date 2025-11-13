HF_USER=boyangs235

python lerobot/scripts/control_robot.py \
    --robot.type so100 \
    --control.type replay \
    --control.fps 30 \
    --control.repo_id ${HF_USER}/eval_so100_Put_Cube_In_Bowl \
    --control.episode 0 \
    --robot.cameras \
    '{
    "gripper_camera":
        {"type": "opencv","camera_index": 0,"fps": 30,"width": 640,"height": 480},
    "global_camera":
        {"type": "opencv","camera_index": 2,"fps": 30,"width": 640,"height": 480},
    "top_camera":
        {"type": "opencv","camera_index": 4,"fps": 30,"width": 640,"height": 480}
    }'