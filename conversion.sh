#!/bin/bash


alpha_zero_model="tic-tac-toe/tf_models/saved_model/alpha_zero_model/"

target_folder_alpha_zero_model="tic-tac-toe/tf_models/models_js/alpha_zero_model"

tensorflowjs_converter --input_format tf_saved_model \
                       --output_format=tfjs_graph_model \
                       --output_node_names='policy,value' \
                       --saved_model_tags=serve \
                       ${alpha_zero_model} \
                       ${target_folder_alpha_zero_model}


alpha_zero_model="4_in_a_row/tf_models/saved_model/alpha_zero_model/"

target_folder_alpha_zero_model="4_in_a_row/tf_models/models_js/alpha_zero_model"

tensorflowjs_converter --input_format tf_saved_model \
                       --output_format=tfjs_graph_model \
                       --output_node_names='policy,value' \
                       --saved_model_tags=serve \
                       ${alpha_zero_model} ${target_folder_alpha_zero_model}


