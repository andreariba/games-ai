#!/bin/bash


TTT_alpha_zero_model="saved_model/alpha_zero_model/"

target_folder_alpha_zero_model="TTT_models_js/alpha_zero_model"

tensorflowjs_converter --input_format tf_saved_model \
                       ${TTT_alpha_zero_model} \
                       ${target_folder_alpha_zero_model}
