## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project LeNet_5_hls

#set_top recognize
#set_top convert_image
#set_top predict
#set_top construct_net
set_top test_hls

add_files stb_image/stb_image.h
add_files stb_image/stb_image_resize.h
add_files stb_image/stb_image_write.h

#add_files -tb ../third_party/CLCudaAPI/clpp11.h
#add_files -tb ../third_party/CLCudaAPI/cupp11.h

#add_files -tb ../third_party/gemmlowp/eight_bit_int_gemm/eight_bit_int_gemm.h
#add_files -tb ../third_party/gemmlowp/eight_bit_int_gemm/eight_bit_int_gemm.cc
#add_files -tb ../third_party/gemmlowp/internal/allocator.h
#add_files -tb ../third_party/gemmlowp/internal/block_params.h
#add_files -tb ../third_party/gemmlowp/internal/common.h
#add_files -tb ../third_party/gemmlowp/internal/compute.h
#add_files -tb ../third_party/gemmlowp/internal/fixedpoint.h
#add_files -tb ../third_party/gemmlowp/internal/fixedpoint_neon.h
#add_files -tb ../third_party/gemmlowp/internal/iterator.h
#add_files -tb ../third_party/gemmlowp/internal/kernel.h
#add_files -tb ../third_party/gemmlowp/internal/kernel_SSE.h
#add_files -tb ../third_party/gemmlowp/internal/kernel_default.h
#add_files -tb ../third_party/gemmlowp/internal/kernel_neon.h
#add_files -tb ../third_party/gemmlowp/internal/kernel_reference.h
#add_files -tb ../third_party/gemmlowp/internal/multi_thread_gemm.h
#add_files -tb ../third_party/gemmlowp/internal/output.h
#add_files -tb ../third_party/gemmlowp/internal/output_neon.h
#add_files -tb ../third_party/gemmlowp/internal/pack.h
#add_files -tb ../third_party/gemmlowp/internal/pack_SSE.h
#add_files -tb ../third_party/gemmlowp/internal/pack_neon.h
#add_files -tb ../third_party/gemmlowp/internal/single_thread_gemm.h
#add_files -tb ../third_party/gemmlowp/internal/unpack.h
#add_files -tb ../third_party/gemmlowp/internal/unpack_neon.h 

#add_files -tb ../third_party/gemmlowp/meta/multi_thread_common.h
#add_files -tb ../third_party/gemmlowp/meta/multi_thread_gemm.h
#add_files -tb ../third_party/gemmlowp/meta/multi_thread_gemv.h
#add_files -tb ../third_party/gemmlowp/meta/operations_common.h
#add_files -tb ../third_party/gemmlowp/meta/single_thread_gemm.h
#add_files -tb ../third_party/gemmlowp/meta/single_thread_gemm_arm32.h
#add_files -tb ../third_party/gemmlowp/meta/single_thread_gemm_arm64.h

#add_files -tb ../third_party/gemmlowp/profiling/instrumentation.h
#add_files -tb ../third_party/gemmlowp/profiling/profiler.h
#add_files -tb ../third_party/gemmlowp/public/bit_depth.h
#add_files -tb ../third_party/gemmlowp/public/gemmlowp.h
#add_files -tb ../third_party/gemmlowp/public/map.h
#add_files -tb ../third_party/gemmlowp/public/output_stages.h
#add_files -tb ../third_party/gemmlowp/public/reference_gemm.h


add_files ../tiny_dnn/activations/activation_function.h
add_files ../tiny_dnn/core/framework/device.fwd.h
add_files ../tiny_dnn/core/framework/device.h
add_files ../tiny_dnn/core/framework/op_kernel.h
add_files ../tiny_dnn/core/framework/program.h
add_files ../tiny_dnn/core/framework/program_manager.h
add_files ../tiny_dnn/core/kernels/avx_conv2d_back_kernel.h
add_files ../tiny_dnn/core/kernels/avx_conv2d_kernel.h
add_files ../tiny_dnn/core/kernels/avx_deconv2d_back_kernel.h
add_files ../tiny_dnn/core/kernels/avx_deconv2d_kernel.h
add_files ../tiny_dnn/core/kernels/avx_fully_connected_kernel.h
add_files ../tiny_dnn/core/kernels/avx_kernel_common.h
add_files ../tiny_dnn/core/kernels/avx_maxpool_kernel.h
add_files ../tiny_dnn/core/kernels/conv2d.h
add_files ../tiny_dnn/core/kernels/conv2d_grad_op.h
add_files ../tiny_dnn/core/kernels/conv2d_grad_op_avx.h
add_files ../tiny_dnn/core/kernels/conv2d_op.h
add_files ../tiny_dnn/core/kernels/conv2d_op_avx.h
add_files ../tiny_dnn/core/kernels/conv2d_op_custom.h
add_files ../tiny_dnn/core/kernels/conv2d_op_libdnn.h
add_files ../tiny_dnn/core/kernels/conv2d_op_nnpack.h
add_files ../tiny_dnn/core/kernels/conv2d_op_opencl.h
add_files ../tiny_dnn/core/kernels/fully_connected_grad_op.h
add_files ../tiny_dnn/core/kernels/fully_connected_op.h
add_files ../tiny_dnn/core/kernels/fully_connected_op_avx.h
add_files ../tiny_dnn/core/kernels/fully_connected_op_custom.h
add_files ../tiny_dnn/core/kernels/fully_connected_op_nnpack.h
add_files ../tiny_dnn/core/kernels/nnp_deconv2d_kernel.h
add_files ../tiny_dnn/core/kernels/nnp_fully_kernel.h
add_files ../tiny_dnn/core/kernels/nnp_maxpool_kernel.h
add_files ../tiny_dnn/core/kernels/tiny_conv2d_back_kernel.h
add_files ../tiny_dnn/core/kernels/tiny_conv2d_kernel.h
add_files ../tiny_dnn/core/kernels/tiny_deconv2d_back_kernel.h
add_files ../tiny_dnn/core/kernels/tiny_deconv2d_kernel.h
add_files ../tiny_dnn/core/kernels/tiny_fully_connected_kernel.h
add_files ../tiny_dnn/core/kernels/tiny_maxpool_kernel.h
add_files ../tiny_dnn/core/kernels/tiny_quantization_kernel.h
add_files ../tiny_dnn/core/kernels/tiny_quantized_conv2d_kernel.h
add_files ../tiny_dnn/core/kernels/tiny_quantized_deconv2d_kernel.h
add_files ../tiny_dnn/core/kernels/tiny_quantized_fully_connected_kernel.h
#add_files ../tiny_dnn/core/kernels/tiny_quantized_matmul_kernel.h

add_files ../tiny_dnn/core/params/conv_params.h
add_files ../tiny_dnn/core/params/deconv_params.h
add_files ../tiny_dnn/core/params/fully_params.h
add_files ../tiny_dnn/core/params/maxpool_params.h
add_files ../tiny_dnn/core/params/params.h

add_files ../tiny_dnn/core/backend.h
add_files ../tiny_dnn/core/backend_avx.h
add_files ../tiny_dnn/core/backend_dnn.h
add_files ../tiny_dnn/core/backend_nnp.h
add_files ../tiny_dnn/core/backend_tiny.h
add_files ../tiny_dnn/core/device.h
add_files ../tiny_dnn/core/device_cpu.h
add_files ../tiny_dnn/core/device_ocl.h
add_files ../tiny_dnn/core/session.h

add_files ../tiny_dnn/io/caffe/layer_factory.h
add_files ../tiny_dnn/io/caffe/layer_factory_impl.h
#add_files ../tiny_dnn/io/caffe/caffe.proto
add_files ../tiny_dnn/io/cifar10_parser.h
add_files ../tiny_dnn/io/display.h
add_files ../tiny_dnn/io/layer_factory.h
add_files ../tiny_dnn/io/mnist_parser.h

add_files ../tiny_dnn/layers/arithmetic_layer.h
add_files ../tiny_dnn/layers/average_pooling_layer.h
add_files ../tiny_dnn/layers/average_unpooling_layer.h
add_files ../tiny_dnn/layers/batch_normalization_layer.h
add_files ../tiny_dnn/layers/concat_layer.h
add_files ../tiny_dnn/layers/convolutional_layer.h
add_files ../tiny_dnn/layers/deconvolutional_layer.h
add_files ../tiny_dnn/layers/dropout_layer.h
add_files ../tiny_dnn/layers/feedforward_layer.h
add_files ../tiny_dnn/layers/fully_connected_layer.h
add_files ../tiny_dnn/layers/input_layer.h
add_files ../tiny_dnn/layers/layer.h
add_files ../tiny_dnn/layers/layers.h
add_files ../tiny_dnn/layers/linear_layer.h
add_files ../tiny_dnn/layers/lrn_layer.h
add_files ../tiny_dnn/layers/max_pooling_layer.h
add_files ../tiny_dnn/layers/max_unpooling_layer.h
add_files ../tiny_dnn/layers/partial_connected_layer.h
add_files ../tiny_dnn/layers/power_layer.h
add_files ../tiny_dnn/layers/quantized_convolutional_layer.h
add_files ../tiny_dnn/layers/quantized_deconvolutional_layer.h
add_files ../tiny_dnn/layers/quantized_fully_connected_layer.h
add_files ../tiny_dnn/layers/slice_layer.h
add_files ../tiny_dnn/lossfunctions/loss_function.h
#add_files ../tiny_dnn/models/alexnet.h
add_files ../tiny_dnn/optimizers/optimizer.h
add_files ../tiny_dnn/util/aligned_allocator.h
add_files ../tiny_dnn/util/colored_print.h
add_files ../tiny_dnn/util/deform.h
add_files ../tiny_dnn/util/graph_visualizer.h
add_files ../tiny_dnn/util/image.h
add_files ../tiny_dnn/util/math_functions.h
add_files ../tiny_dnn/util/nn_error.h
add_files ../tiny_dnn/util/parallel_for.h
add_files ../tiny_dnn/util/product.h
add_files ../tiny_dnn/util/random.h
add_files ../tiny_dnn/util/target_cost.h
add_files ../tiny_dnn/util/util.h
add_files ../tiny_dnn/util/weight_init.h

add_files ../tiny_dnn/config.h
add_files ../tiny_dnn/network.h
add_files ../tiny_dnn/node.h
add_files ../tiny_dnn/nodes.h
add_files ../tiny_dnn/tiny_dnn.h
add_files lenet.cpp

add_files -cflags "-pthread -std=c++0x -pedantic -Wall -Wextra" -tb lenet.cpp
add_files -tb 4.bmp
add_files -tb LeNet-weights


open_solution -reset "lenet-5"
set_part {xc7vx690tffg1761-2}
create_clock -period 10 -name default


csim_design -clean -argv {LeNet-weights, 4.bmp}

#csynth_design

#cosim_design -argv {LeNet-weights, 4.bmp} -trace_level none -rtl systemc -tool xsim


