
set TopModule "test_vec_t"
set ClockPeriod "10.000000"
set ClockList {ap_clk}
set multiClockList {}
set PortClockMap {}
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag  1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NewDSPMapping 0
set ResetLevelFlag 1
set ResetStyle "control"
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set fsmEncStyle "onehot"
set maxFanout "0"
set RtlPrefix ""
set ExtraCCFlags ""
set ExtraCLdFlags ""
set SynCheckOptions ""
set PresynOptions ""
set PreprocOptions ""
set SchedOptions ""
set BindOptions ""
set RtlGenOptions ""
set RtlWriterOptions ""
set CbcGenFlag ""
set CasGenFlag ""
set CasMonitorFlag ""
set AutoSimOptions {}
set ExportMCPathFlag "0"
set SCTraceFileName "mytrace"
set SCTraceFileFormat "vcd"
set SCTraceOption "all"
set TargetInfo "xc7vx690t:ffg1761:-2"
set SourceFiles {sc {} c {../../../tiny_dnn/tiny_dnn.h ../../../tiny_dnn/nodes.h ../../../tiny_dnn/node.h ../../../tiny_dnn/network.h ../../../tiny_dnn/config.h ../../../tiny_dnn/static_vector.h ../../../tiny_dnn/util/weight_init.h ../../../tiny_dnn/util/util.h ../../../tiny_dnn/util/target_cost.h ../../../tiny_dnn/util/random.h ../../../tiny_dnn/util/product.h ../../../tiny_dnn/util/parallel_for.h ../../../tiny_dnn/util/nn_error.h ../../../tiny_dnn/util/math_functions.h ../../../tiny_dnn/util/image.h ../../../tiny_dnn/util/graph_visualizer.h ../../../tiny_dnn/util/deform.h ../../../tiny_dnn/util/colored_print.h ../../../tiny_dnn/util/aligned_allocator.h ../../../tiny_dnn/optimizers/optimizer.h ../../../tiny_dnn/lossfunctions/loss_function.h ../../../tiny_dnn/layers/slice_layer.h ../../../tiny_dnn/layers/quantized_fully_connected_layer.h ../../../tiny_dnn/layers/quantized_deconvolutional_layer.h ../../../tiny_dnn/layers/quantized_convolutional_layer.h ../../../tiny_dnn/layers/power_layer.h ../../../tiny_dnn/layers/partial_connected_layer.h ../../../tiny_dnn/layers/max_unpooling_layer.h ../../../tiny_dnn/layers/max_pooling_layer.h ../../../tiny_dnn/layers/lrn_layer.h ../../../tiny_dnn/layers/linear_layer.h ../../../tiny_dnn/layers/layers.h ../../../tiny_dnn/layers/layer.h ../../../tiny_dnn/layers/input_layer.h ../../../tiny_dnn/layers/fully_connected_layer.h ../../../tiny_dnn/layers/feedforward_layer.h ../../../tiny_dnn/layers/dropout_layer.h ../../../tiny_dnn/layers/deconvolutional_layer.h ../../../tiny_dnn/layers/convolutional_layer.h ../../../tiny_dnn/layers/concat_layer.h ../../../tiny_dnn/layers/batch_normalization_layer.h ../../../tiny_dnn/layers/average_unpooling_layer.h ../../../tiny_dnn/layers/average_pooling_layer.h ../../../tiny_dnn/layers/arithmetic_layer.h ../../../tiny_dnn/io/mnist_parser.h ../../../tiny_dnn/io/layer_factory.h ../../../tiny_dnn/io/display.h ../../../tiny_dnn/io/cifar10_parser.h ../../../tiny_dnn/io/caffe/layer_factory_impl.h ../../../tiny_dnn/io/caffe/layer_factory.h ../../../tiny_dnn/core/session.h ../../../tiny_dnn/core/device_ocl.h ../../../tiny_dnn/core/device_cpu.h ../../../tiny_dnn/core/device.h ../../../tiny_dnn/core/backend_tiny.h ../../../tiny_dnn/core/backend_nnp.h ../../../tiny_dnn/core/backend_dnn.h ../../../tiny_dnn/core/backend_avx.h ../../../tiny_dnn/core/backend.h ../../../tiny_dnn/core/params/params.h ../../../tiny_dnn/core/params/maxpool_params.h ../../../tiny_dnn/core/params/fully_params.h ../../../tiny_dnn/core/params/deconv_params.h ../../../tiny_dnn/core/params/conv_params.h ../../../tiny_dnn/core/kernels/tiny_quantized_fully_connected_kernel.h ../../../tiny_dnn/core/kernels/tiny_quantized_deconv2d_kernel.h ../../../tiny_dnn/core/kernels/tiny_quantized_conv2d_kernel.h ../../../tiny_dnn/core/kernels/tiny_quantization_kernel.h ../../../tiny_dnn/core/kernels/tiny_maxpool_kernel.h ../../../tiny_dnn/core/kernels/tiny_fully_connected_kernel.h ../../../tiny_dnn/core/kernels/tiny_deconv2d_kernel.h ../../../tiny_dnn/core/kernels/tiny_deconv2d_back_kernel.h ../../../tiny_dnn/core/kernels/tiny_conv2d_kernel.h ../../../tiny_dnn/core/kernels/tiny_conv2d_back_kernel.h ../../../tiny_dnn/core/kernels/nnp_maxpool_kernel.h ../../../tiny_dnn/core/kernels/nnp_fully_kernel.h ../../../tiny_dnn/core/kernels/nnp_deconv2d_kernel.h ../../../tiny_dnn/core/kernels/fully_connected_op_nnpack.h ../../../tiny_dnn/core/kernels/fully_connected_op_custom.h ../../../tiny_dnn/core/kernels/fully_connected_op_avx.h ../../../tiny_dnn/core/kernels/fully_connected_op.h ../../../tiny_dnn/core/kernels/fully_connected_grad_op.h ../../../tiny_dnn/core/kernels/conv2d_op_opencl.h ../../../tiny_dnn/core/kernels/conv2d_op_nnpack.h ../../../tiny_dnn/core/kernels/conv2d_op_libdnn.h ../../../tiny_dnn/core/kernels/conv2d_op_custom.h ../../../tiny_dnn/core/kernels/conv2d_op_avx.h ../../../tiny_dnn/core/kernels/conv2d_op.h ../../../tiny_dnn/core/kernels/conv2d_grad_op_avx.h ../../../tiny_dnn/core/kernels/conv2d_grad_op.h ../../../tiny_dnn/core/kernels/conv2d.h ../../../tiny_dnn/core/kernels/avx_maxpool_kernel.h ../../../tiny_dnn/core/kernels/avx_kernel_common.h ../../../tiny_dnn/core/kernels/avx_fully_connected_kernel.h ../../../tiny_dnn/core/kernels/avx_deconv2d_kernel.h ../../../tiny_dnn/core/kernels/avx_deconv2d_back_kernel.h ../../../tiny_dnn/core/kernels/avx_conv2d_kernel.h ../../../tiny_dnn/core/kernels/avx_conv2d_back_kernel.h ../../../tiny_dnn/core/framework/program_manager.h ../../../tiny_dnn/core/framework/program.h ../../../tiny_dnn/core/framework/op_kernel.h ../../../tiny_dnn/core/framework/device.h ../../../tiny_dnn/core/framework/device.fwd.h ../../../tiny_dnn/activations/activation_function.h ../../stb_image/stb_image_write.h ../../stb_image/stb_image_resize.h ../../stb_image/stb_image.h ../../lenet.cpp}}
set SourceFlags {sc {} c {{ } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { } { }}}
set DirectiveFile {/home/yaochen/work/NN/NN_hls/tiny_dnn_LeNet5/examples/LeNet_5_hls/lenet-5/lenet-5.directive}
set TBFiles {verilog {../../LeNet-weights ../../4.bmp ../../lenet.cpp} bc {../../LeNet-weights ../../4.bmp ../../lenet.cpp} sc {../../LeNet-weights ../../4.bmp ../../lenet.cpp} vhdl {../../LeNet-weights ../../4.bmp ../../lenet.cpp} c {} cas {../../LeNet-weights ../../4.bmp ../../lenet.cpp}}
set SpecLanguage "C"
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set PlatformFiles {{DefaultPlatform {xilinx/virtex7/virtex7 xilinx/virtex7/virtex7_fpv6}}}
set DefaultPlatform "DefaultPlatform"
set TBTVFileNotFound ""
set AppFile "../vivado_hls.app"
set ApsFile "lenet-5.aps"
set AvePath "../.."
