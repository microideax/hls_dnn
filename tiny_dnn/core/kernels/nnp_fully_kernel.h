/*
    Copyright (c) 2016, Taiga Nomi, Edgar Riba
    All rights reserved.

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
    notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in the
    documentation and/or other materials provided with the distribution.
    * Neither the name of the <organization> nor the
    names of its contributors may be used to endorse or promote products
    derived from this software without specific prior written permission.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY
    EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
    WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
    DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
    DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
    (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
    LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
    ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
    (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
    SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/
#pragma once

#include "../params/fully_params.h"

namespace tiny_dnn {
namespace core {
namespace kernels {

inline void nnp_fully_connected_kernel(const fully_params& params,
                                       const tensor_t&     in,
                                       const vec_t&        W,
                                       vec_t&              b,
                                       tensor_t&           a,
                                       const bool          layer_parallelize) {
#ifdef CNN_USE_NNPACK
    const float* kernel_ptr = reinterpret_cast<const float*>(&W[0]);
    const float* input_ptr  = reinterpret_cast<const float*>(&in[0]);
    float*       output_ptr = reinterpret_cast<float*>(&a[0]);

    // TODO: embed it into a class
    const size_t num_mkl_threads = 1;
    pthreadpool_t threadpool = pthreadpool_create(num_mkl_threads);

    const auto status =
        nnp_fully_connected_inference(
            params.in_size_,
            params.out_size_,
            input_ptr,
            kernel_ptr,
            output_ptr,
            threadpool);

     if (status != nnp_status_success) {
        throw nn_error("Could not succeed with nnp_max_pooling_output");
    }

    // TODO: embed it into a class
    pthreadpool_destroy(threadpool);

    // TODO: find a proper way to do this
    if (params.has_bias_) {
        for_i(layer_parallelize, params.out_size_, [&](int i) {
            // TODO(edgar): revise this
            // a[i] += b[i];
        });
    }
#endif
}

}  // namespace kernels
}  // namespace core
}  // namespace tiny_dnn
