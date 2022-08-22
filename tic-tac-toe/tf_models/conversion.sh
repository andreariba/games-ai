#!/bin/bash


TTT_alpha_zero_model="saved_model/alpha_zero_model/"

target_folder_alpha_zero_model="TTT_models_js/alpha_zero_model"

tensorflowjs_converter --input_format tf_saved_model \
                       --output_format=tfjs_graph_model \
                       --output_node_names='policy,value' \
                       --saved_model_tags=serve \
                       ${TTT_alpha_zero_model} \
                       ${target_folder_alpha_zero_model}


# tensorflowjs_converter --input_format tf_frozen_model \
#                        --output_format=tfjs_graph_model \
#                        --output_node_names='policy,value' \
#                        ${TTT_alpha_zero_model}saved_model.pb \
#                        ${target_folder_alpha_zero_model}
