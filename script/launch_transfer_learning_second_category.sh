#!/usr/bin/env bash
export PYTHONPATH="."
python transfer_learning/train.py \
    --image_dir "../../tests/datamobile/data/vegetables/" \
    --model_dir "model/fruits/" \
    --bottleneck_dir "data/bottleneck/vegetables/"  \
    --output_graph "model/output_graph_veg.pb" \
    --output_labels "model/output_labels_veg.txt" \
    --final_tensor_name "final_result_veg" \
    --all_final_tensors_names_list "final_result_fruits,final_result_veg" \
    --how_many_training_steps 100 \
    --learning_rate 0.01 \
    --summaries_dir "summaries/vegetables/" \
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
    --intermediate_output_graphs_dir "/train/intermediate_graph/" \
    --intermediate_store_frequency 0 \
    --architecture "mobilenet_1.0_224"