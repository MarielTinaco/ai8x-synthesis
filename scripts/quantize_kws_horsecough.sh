#!/bin/sh
# python quantize.py logs/2022.11.25-034414/qat_best.pth.tar logs/2022.11.25-034414/qat_best-q.pth.tar --device MAX78000 -v 

python quantize.py trained/qat_ai85kws20kabayo_tf_best.pth.tar trained/qat_ai85kws20kabayo_tf_best-q.pth.tar --device MAX78000 -v 
