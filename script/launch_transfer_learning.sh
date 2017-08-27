#!/usr/bin/env bash
export PYTHONPATH="."
python transfer_learning/train.py \
    --image_dir data/flower_photos \
    --model_dir data/base_model \
    --bottleneck_dir data/bottleneck \
    --output_graph train/output_graph.pb \
    --output_labels train/output_labels.txt \
    --final_tensor_name final_result \
    --how_many_training_steps 100 \
    --learning_rate 0.01 \
    --flip_left_right False \
    --random_crop 0 \
    --random_scale 0 \
    --random_brightness 0 \
    --summaries_dir train/retrain_logs \
    --train_batch_size 100 \
    --test_batch_size -1 \
    --validation_batch_size 100 \
    --testing_percentage 10 \
    --validation_percentage 10 \
    --eval_step_interval 10 \
    --print_misclassified_test_images True \
    --intermediate_output_graphs_dir /train/intermediate_graph/ \
    --intermediate_store_frequency 0 \
    --architecture mobilenet_1.0_224