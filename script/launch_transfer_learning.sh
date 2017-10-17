#!/usr/bin/env bash
export PYTHONPATH="."
python transfer_learning/train.py \
    --image_dir "data/images/fruits/" \
    --model_dir "model/base_model" \
    --bottleneck_dir "data/bottleneck/fruits" \
    --output_graph "model/fruits/output_graph_fruits_0.50_160_q.pb" \
    --output_labels "model/fruits/output_labels_fruits.txt" \
    --final_tensor_name "final_result_fruits" \
    --all_final_tensors_names_list "final_result_fruits" \
    --summaries_dir "summaries/fruits/0.50_160_q" \
    --intermediate_output_graphs_dir "model/fruits/intermediate_graph_0.50_160_q/" \
    --how_many_training_steps 5000 \
    --learning_rate 0.005 \
    --flip_left_right True \
    --random_crop 30 \
    --random_scale 30 \
    --random_brightness 30 \
    --train_batch_size 100 \
    --test_batch_size -1 \
    --validation_batch_size 100 \
    --testing_percentage 10 \
    --validation_percentage 10 \
    --eval_step_interval 10 \
    --print_misclassified_test_images True \
    --intermediate_store_frequency 100 \
    --architecture "mobilenet_0.50_160_quantized"