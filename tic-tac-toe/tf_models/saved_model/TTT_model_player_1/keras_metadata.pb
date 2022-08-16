
�?root"_tf_keras_network*�?{"name": "tictactoe_model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "tictactoe_model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_46"}, "name": "input_46", "inbound_nodes": []}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_45", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_45", "inbound_nodes": [["input_46", 0, 0, {"dtype": "int32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.one_hot_45", "trainable": true, "dtype": "float32", "function": "one_hot"}, "name": "tf.one_hot_45", "inbound_nodes": [["tf.cast_45", 0, 0, {"depth": 3}]]}, {"class_name": "Flatten", "config": {"name": "flatten_52", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_52", "inbound_nodes": [[["tf.one_hot_45", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_290", "trainable": true, "dtype": "float32", "units": 256, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_290", "inbound_nodes": [[["flatten_52", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_253", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout_253", "inbound_nodes": [[["dense_290", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_291", "trainable": true, "dtype": "float32", "units": 256, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_291", "inbound_nodes": [[["dropout_253", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_254", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout_254", "inbound_nodes": [[["dense_291", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_292", "trainable": true, "dtype": "float32", "units": 9, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_292", "inbound_nodes": [[["dropout_254", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_45", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_45", "inbound_nodes": [["dense_292", 0, 0, {"shape": {"class_name": "__tuple__", "items": [-1, 9]}}]]}, {"class_name": "MaskPlayed", "config": {"name": "mask_played_45", "trainable": true, "dtype": "float32"}, "name": "mask_played_45", "inbound_nodes": [[["input_46", 0, 0, {"x": ["tf.reshape_45", 0, 0]}]]]}], "input_layers": [["input_46", 0, 0]], "output_layers": [["mask_played_45", 0, 0]]}, "shared_object_id": 17, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 9]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 9]}, "is_graph_network": true, "full_save_spec": {"class_name": "__tuple__", "items": [[{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 9]}, "float32", "input_46"]}], {}]}, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 9]}, "float32", "input_46"]}, "keras_version": "2.7.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "tictactoe_model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_46"}, "name": "input_46", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_45", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_45", "inbound_nodes": [["input_46", 0, 0, {"dtype": "int32"}]], "shared_object_id": 1}, {"class_name": "TFOpLambda", "config": {"name": "tf.one_hot_45", "trainable": true, "dtype": "float32", "function": "one_hot"}, "name": "tf.one_hot_45", "inbound_nodes": [["tf.cast_45", 0, 0, {"depth": 3}]], "shared_object_id": 2}, {"class_name": "Flatten", "config": {"name": "flatten_52", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_52", "inbound_nodes": [[["tf.one_hot_45", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "Dense", "config": {"name": "dense_290", "trainable": true, "dtype": "float32", "units": 256, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_290", "inbound_nodes": [[["flatten_52", 0, 0, {}]]], "shared_object_id": 6}, {"class_name": "Dropout", "config": {"name": "dropout_253", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout_253", "inbound_nodes": [[["dense_290", 0, 0, {}]]], "shared_object_id": 7}, {"class_name": "Dense", "config": {"name": "dense_291", "trainable": true, "dtype": "float32", "units": 256, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_291", "inbound_nodes": [[["dropout_253", 0, 0, {}]]], "shared_object_id": 10}, {"class_name": "Dropout", "config": {"name": "dropout_254", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout_254", "inbound_nodes": [[["dense_291", 0, 0, {}]]], "shared_object_id": 11}, {"class_name": "Dense", "config": {"name": "dense_292", "trainable": true, "dtype": "float32", "units": 9, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_292", "inbound_nodes": [[["dropout_254", 0, 0, {}]]], "shared_object_id": 14}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_45", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_45", "inbound_nodes": [["dense_292", 0, 0, {"shape": {"class_name": "__tuple__", "items": [-1, 9]}}]], "shared_object_id": 15}, {"class_name": "MaskPlayed", "config": {"name": "mask_played_45", "trainable": true, "dtype": "float32"}, "name": "mask_played_45", "inbound_nodes": [[["input_46", 0, 0, {"x": ["tf.reshape_45", 0, 0]}]]], "shared_object_id": 16}], "input_layers": [["input_46", 0, 0]], "output_layers": [["mask_played_45", 0, 0]]}}}2
�root.layer-0"_tf_keras_input_layer*�{"class_name": "InputLayer", "name": "input_46", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_46"}}2
�root.layer-1"_tf_keras_layer*�{"name": "tf.cast_45", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_45", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["input_46", 0, 0, {"dtype": "int32"}]], "shared_object_id": 1}2
�root.layer-2"_tf_keras_layer*�{"name": "tf.one_hot_45", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.one_hot_45", "trainable": true, "dtype": "float32", "function": "one_hot"}, "inbound_nodes": [["tf.cast_45", 0, 0, {"depth": 3}]], "shared_object_id": 2}2
�root.layer-3"_tf_keras_layer*�{"name": "flatten_52", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_52", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["tf.one_hot_45", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 19}}2
�root.layer_with_weights-0"_tf_keras_layer*�{"name": "dense_290", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_290", "trainable": true, "dtype": "float32", "units": 256, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["flatten_52", 0, 0, {}]]], "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 27}}, "shared_object_id": 20}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 27]}}2
�root.layer-5"_tf_keras_layer*�{"name": "dropout_253", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_253", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "inbound_nodes": [[["dense_290", 0, 0, {}]]], "shared_object_id": 7}2
�root.layer_with_weights-1"_tf_keras_layer*�{"name": "dense_291", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_291", "trainable": true, "dtype": "float32", "units": 256, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout_253", 0, 0, {}]]], "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}2
�root.layer-7"_tf_keras_layer*�{"name": "dropout_254", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_254", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "inbound_nodes": [[["dense_291", 0, 0, {}]]], "shared_object_id": 11}2
�	root.layer_with_weights-2"_tf_keras_layer*�{"name": "dense_292", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_292", "trainable": true, "dtype": "float32", "units": 9, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout_254", 0, 0, {}]]], "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}2
�
root.layer-9"_tf_keras_layer*�{"name": "tf.reshape_45", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.reshape_45", "trainable": true, "dtype": "float32", "function": "reshape"}, "inbound_nodes": [["dense_292", 0, 0, {"shape": {"class_name": "__tuple__", "items": [-1, 9]}}]], "shared_object_id": 15}2
�