#!/bin/bash
cp -rf /home/yaochen/work/NN/NN_hls/tiny_dnn_LeNet5/eclipse_debug/src/tiny_dnn /home/yaochen/work/NN/NN_hls/tiny_dnn_LeNet5/

g++ -std=c++11 -Wall -Wextra -pedantic -I ../ -O3 lenet.cpp -o hlstest
