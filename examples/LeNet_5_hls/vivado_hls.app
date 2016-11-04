<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="LeNet_5_hls" top="test_vec_t">
    <Simulation argv="LeNet-weights, 4.bmp">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="true" ldflags="" mflags=""/>
    </Simulation>
    <files>
        <file name="../../LeNet-weights" sc="0" tb="1" cflags=" "/>
        <file name="../../4.bmp" sc="0" tb="1" cflags=" "/>
        <file name="../../lenet.cpp" sc="0" tb="1" cflags=" -std=c++0x -pthread -pedantic -Wall -Wextra"/>
        <file name="../tiny_dnn/tiny_dnn.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/nodes.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/node.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/network.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/config.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/static_vector.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/util/weight_init.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/util/util.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/util/target_cost.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/util/random.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/util/product.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/util/parallel_for.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/util/nn_error.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/util/math_functions.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/util/image.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/util/graph_visualizer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/util/deform.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/util/colored_print.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/util/aligned_allocator.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/optimizers/optimizer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/lossfunctions/loss_function.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/layers/slice_layer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/layers/quantized_fully_connected_layer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/layers/quantized_deconvolutional_layer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/layers/quantized_convolutional_layer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/layers/power_layer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/layers/partial_connected_layer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/layers/max_unpooling_layer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/layers/max_pooling_layer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/layers/lrn_layer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/layers/linear_layer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/layers/layers.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/layers/layer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/layers/input_layer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/layers/fully_connected_layer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/layers/feedforward_layer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/layers/dropout_layer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/layers/deconvolutional_layer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/layers/convolutional_layer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/layers/concat_layer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/layers/batch_normalization_layer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/layers/average_unpooling_layer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/layers/average_pooling_layer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/layers/arithmetic_layer.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/io/mnist_parser.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/io/layer_factory.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/io/display.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/io/cifar10_parser.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/io/caffe/layer_factory_impl.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/io/caffe/layer_factory.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/session.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/device_ocl.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/device_cpu.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/device.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/backend_tiny.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/backend_nnp.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/backend_dnn.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/backend_avx.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/backend.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/params/params.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/params/maxpool_params.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/params/fully_params.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/params/deconv_params.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/params/conv_params.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/tiny_quantized_fully_connected_kernel.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/tiny_quantized_deconv2d_kernel.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/tiny_quantized_conv2d_kernel.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/tiny_quantization_kernel.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/tiny_maxpool_kernel.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/tiny_fully_connected_kernel.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/tiny_deconv2d_kernel.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/tiny_deconv2d_back_kernel.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/tiny_conv2d_kernel.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/tiny_conv2d_back_kernel.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/nnp_maxpool_kernel.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/nnp_fully_kernel.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/nnp_deconv2d_kernel.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/fully_connected_op_nnpack.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/fully_connected_op_custom.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/fully_connected_op_avx.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/fully_connected_op.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/fully_connected_grad_op.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/conv2d_op_opencl.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/conv2d_op_nnpack.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/conv2d_op_libdnn.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/conv2d_op_custom.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/conv2d_op_avx.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/conv2d_op.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/conv2d_grad_op_avx.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/conv2d_grad_op.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/conv2d.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/avx_maxpool_kernel.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/avx_kernel_common.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/avx_fully_connected_kernel.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/avx_deconv2d_kernel.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/avx_deconv2d_back_kernel.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/avx_conv2d_kernel.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/kernels/avx_conv2d_back_kernel.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/framework/program_manager.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/framework/program.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/framework/op_kernel.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/framework/device.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/core/framework/device.fwd.h" sc="0" tb="false" cflags=""/>
        <file name="../tiny_dnn/activations/activation_function.h" sc="0" tb="false" cflags=""/>
        <file name="stb_image/stb_image_write.h" sc="0" tb="false" cflags=""/>
        <file name="stb_image/stb_image_resize.h" sc="0" tb="false" cflags=""/>
        <file name="stb_image/stb_image.h" sc="0" tb="false" cflags=""/>
        <file name="lenet.cpp" sc="0" tb="false" cflags=""/>
    </files>
    <solutions>
        <solution name="lenet-5" status=""/>
    </solutions>
</AutoPilot:project>

