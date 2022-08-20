import numpy as np
import tensorflow as tf


class MaskPlayed(tf.keras.layers.Layer):
    def __init__(self):
        super().__init__()
        self.trainable = True

    def call(self, inputs, x):
        zero = tf.constant(0, dtype=tf.float32)
        mask = tf.equal(inputs, zero)
        masked = tf.where(mask, x, tf.zeros_like(x))

        return masked


def create_model():

    activation_fn = tf.nn.leaky_relu

    hidden_dimensions = 256
    depth = 5

    inputs = tf.keras.layers.Input((9))

    # x = tf.one_hot(tf.cast(inputs, tf.int32),3)
    # one_hot_inputs = tf.keras.layers.Flatten()(x)

    x = tf.keras.layers.Dense(hidden_dimensions, activation=activation_fn)(inputs)
    for i in range(depth - 1):
        x = tf.keras.layers.Dense(hidden_dimensions, activation=activation_fn)(x)

    p = tf.keras.layers.Dense(9, activation=activation_fn)(x)
    p = tf.reshape(p, (-1, 9))
    p = tf.keras.layers.Softmax()(p)
    # p = MaskPlayed()(inputs, p)
    # p = tf.keras.layers.Lambda(lambda t: tf.linalg.norm(t,ord=1,axis=0))(p)

    # v = tf.keras.layers.Dense(hidden_dimensions, activation=activation_fn)(inputs)
    # for i in range(depth-1):
    #    v = tf.keras.layers.Dense(hidden_dimensions, activation=activation_fn)(v)
    v = tf.keras.layers.Dense(1, activation=tf.nn.tanh)(x)

    outputs = p, v

    model = tf.keras.Model(inputs=inputs, outputs=outputs, name="tictactoe_model")

    zero_weights = []
    for arr in model.get_weights():
        zero_weights.append(np.zeros(arr.shape))
    model.set_weights(zero_weights)

    return model
