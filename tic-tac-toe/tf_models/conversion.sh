#!/bin/bash

TTT_model_player_1="saved_model/TTT_model_player_1/"
TTT_model_player_2="saved_model/TTT_model_player_2/"

target_folder_model_player_1="TTT_models_js/TTT_model_player_1/"
target_folder_model_player_2="TTT_models_js/TTT_model_player_2/"

tensorflowjs_converter --input_format tf_saved_model \
                       ${TTT_model_player_1} \
                       ${target_folder_model_player_1}

tensorflowjs_converter --input_format tf_saved_model \
                       ${TTT_model_player_2} \
                       ${target_folder_model_player_2}
