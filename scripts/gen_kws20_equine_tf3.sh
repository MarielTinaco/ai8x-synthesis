#!/bin/sh
DEVICE="MAX78000"
TARGET="C:/MaximSDK/Examples/$DEVICE/CNN"
COMMON_ARGS="--device $DEVICE --timer 0 --display-checkpoint --verbose --debug-latency --overwrite --energy"

# python ai8xize.py --test-dir $TARGET --prefix kws_equine --checkpoint-file trained/qat_ai85net_kws_equine_best-q.pth.tar --config-file networks/kws20-equine-hwc-tf2.yaml --softmax $COMMON_ARGS "$@"
python ai8xize.py --test-dir $TARGET --prefix equine_binary_3 --checkpoint-file trained/qat_ai85net_kws_equine_best_friend-q.pth.tar --config-file networks/kws20-hwc-equine-3.yaml --softmax $COMMON_ARGS "$@"
