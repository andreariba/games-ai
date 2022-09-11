#!/bin/bash


# Tic-Tac-Toe
#alpha_zero_model="tic-tac-toe/tf_models/saved_model/alpha_zero_model_1k_training_validation"
#alpha_zero_model="tic-tac-toe/tf_models/saved_model/alpha_zero_model_10k_training_validation"
alpha_zero_model="tic-tac-toe/tf_models/saved_model/alpha_zero_10k_and_20round_selfplay_decreasing_temp"
target_folder_alpha_zero_model="tic-tac-toe/tf_models/models_js/alpha_zero_model"

tensorflowjs_converter --input_format tf_saved_model \
                       --output_format=tfjs_graph_model \
                       --output_node_names='policy,value' \
                       --saved_model_tags=serve \
                       ${alpha_zero_model} \
                       ${target_folder_alpha_zero_model}


# 4-in-a-row
alpha_zero_model="4_in_a_row/tf_models/saved_model/alpha_zero_model/"
target_folder_alpha_zero_model="4_in_a_row/tf_models/models_js/alpha_zero_model"

tensorflowjs_converter --input_format tf_saved_model \
                       --output_format=tfjs_graph_model \
                       --output_node_names='policy,value' \
                       --saved_model_tags=serve \
                       ${alpha_zero_model} ${target_folder_alpha_zero_model}


