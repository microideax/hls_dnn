#!/bin/bash

rm -rf hlstest

max=60
for (( i=2; i <= max; ++i))
do
	echo -e "\n"
done

cp -rf /home/yaochen/work/NN/NN_hls/tiny_dnn_LeNet5/eclipse_debug/src/tiny_dnn /home/yaochen/work/NN/NN_hls/tiny_dnn_LeNet5/

g++ -std=c++11 -Wall -Wextra -pedantic -I ../ -O0 -g lenet.cpp -o hlstest
