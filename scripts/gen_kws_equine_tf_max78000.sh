#!/bin/sh
DEVICE="MAX78000"
TARGET="C:/MaximSDK/Examples/$DEVICE/CNN"
COMMON_ARGS="--device $DEVICE --timer 0 --display-checkpoint --verbose --debug-latency --overwrite --energy"

# python ai8xize.py --test-dir $TARGET --prefix kws20_equine_tf --checkpoint-file trained/qat_ai85kws20kabayo_tf_best-q.pth.tar --config-file networks/kws20-equine-hwc-tf.yaml --softmax $COMMON_ARGS "$@"
python ai8xize.py --test-dir $TARGET --prefix equine_2 --checkpoint-file trained/qat_human_others_12_best-q.pth.tar --config-file networks/kws20-equine-hwc-tf-human.yaml --softmax $COMMON_ARGS "$@"
