import hashlib
import numpy as np
import tensorflow as tf


class CachedModel:

    def __init__(self, model: tf.keras.Model, cache = {}):

        self._model = model
        self._cached_predict = cache

    def predict(self, x: np.array):

        key = hashlib.sha1(x.view(np.uint8)).hexdigest()

        if key not in self._cached_predict:
            self._cached_predict[key] = self._model.predict(x)

        return self._cached_predict[key]
    
    def compile(self, *args, **kwargs):
        self._model.compile(*args, **kwargs)

    def fit(self, *args, **kwargs):
        self._model.fit(*args, **kwargs)

    def save(self, *args, **kwargs):
        self._model.save(*args, **kwargs)



def create_az_model():

    kernel_regularizer = tf.keras.regularizers.L2(1e-4)

    inputs = tf.keras.layers.Input((42))

    # One-Hot encoding
    x = tf.cast(tf.one_hot(tf.cast(inputs + 1, tf.int32), 3), tf.float32)

    # Residual tower
    x = tf.reshape(x, (-1, 6, 7, 3))
    x = tf.keras.layers.Conv2D(
        filters=256, kernel_size=(4, 4), kernel_regularizer=kernel_regularizer
    )(x)
    x = tf.keras.layers.BatchNormalization()(x)
    x = tf.keras.layers.ReLU()(x)
    x = tf.keras.layers.Conv2D(
        filters=256, kernel_size=(2, 3), kernel_regularizer=kernel_regularizer
    )(x)
    x = tf.keras.layers.BatchNormalization()(x)
    x = tf.keras.layers.Flatten()(x)
    flatten_inputs = tf.keras.layers.Flatten()(inputs)
    x = tf.concat([flatten_inputs, x], axis=1)
    residual_tower = tf.keras.layers.ReLU(name="residual_tower")(x)

    # Policy
    x = tf.keras.layers.Conv1D(
        filters=2, kernel_size=1, kernel_regularizer=kernel_regularizer
    )(residual_tower[..., np.newaxis])
    x = tf.keras.layers.BatchNormalization()(x)
    x = tf.keras.layers.ReLU()(x)
    x = tf.keras.layers.Flatten()(x)
    p = tf.keras.layers.Dense(
        7,
        activation=tf.keras.activations.softmax,
        kernel_regularizer=kernel_regularizer,
        name="policy",
    )(x)

    # Value
    x = tf.keras.layers.Conv1D(
        filters=1, kernel_size=1, kernel_regularizer=kernel_regularizer
    )(residual_tower[..., np.newaxis])
    x = tf.keras.layers.BatchNormalization()(x)
    x = tf.keras.layers.ReLU()(x)
    x = tf.keras.layers.Flatten()(x)
    x = tf.keras.layers.Dense(
        256,
        activation=tf.keras.activations.relu,
        kernel_regularizer=kernel_regularizer,
    )(x)
    v = tf.keras.layers.Dense(
        1, activation=tf.nn.tanh, kernel_regularizer=kernel_regularizer, name="value"
    )(x)

    outputs = p, v

    model = tf.keras.Model(inputs=inputs, outputs=outputs, name="fiar_model")

    # zero_weights = []
    # for arr in model.get_weights():
    #     zero_weights.append(np.zeros(arr.shape))
    # model.set_weights(zero_weights)

    return model


class MaskPlayed(tf.keras.layers.Layer):
    def __init__(self):
        super().__init__()
        self.trainable = True

    def call(self, inputs, x):
        zero = tf.constant(0, dtype=tf.float32)
        mask = tf.equal(inputs, zero)
        masked = tf.where(mask, x, tf.zeros_like(x))

        return masked