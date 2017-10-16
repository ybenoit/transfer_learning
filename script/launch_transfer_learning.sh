#!/usr/bin/env bash
export PYTHONPATH="."
python transfer_learning/train.py \
    --image_dir "../../tests/datamobile/data/fruits/" \
    --model_dir "model/base_model" \
    --bottleneck_dir "data/bottleneck/fruits" \
    --output_graph "model/fruits/classify_image_graph_def.pb" \
    --output_labels "model/output_labels_fruits.txt" \
    --final_tensor_name "final_result_fruits" \
    --all_final_tensors_names_list "final_result_fruits" \
    --summaries_dir "summaries/fruits" \
    --intermediate_output_graphs_dir "/model/fruits/intermediate_graph/" \
    --how_many_training_steps 100 \
    --learning_rate 0.01 \
    --flip_left_right False \
    --random_crop 0 \
    --random_scale 0 \
    --random_brightness 0 \
    --train_batch_size 100 \
    --test_batch_size -1 \
    --validation_batch_size 100 \
    --testing_percentage 10 \
    --validation_percentage 10 \
    --eval_step_interval 10 \
    --print_misclassified_test_images True \
    --intermediate_store_frequency 0 \
    --architecture "mobilenet_1.0_224"