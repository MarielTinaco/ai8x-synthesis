#!/bin/sh
DEVICE="MAX78000"
TARGET="../msdk/Examples/$DEVICE/CNN"
COMMON_ARGS="--device $DEVICE --timer 0 --display-checkpoint --verbose"

python ai8xize.py --test-dir $TARGET --prefix depthmap --checkpoint-file logs/2022.12.13-142739/qat_best-q.pth.tar --config-file networks/depthmap.yaml --softmax --debug --debug-latency --energy --overwrite --fifo $COMMON_ARGS "$@"
