//LeNet-5 image recognition with std image
//eliminating OpenCV lib dependency
#include <iostream>
#include <vector>
//#define STB_IMAGE_IMPLEMENTATION
//#define STB_IMAGE_RESIZE_IMPLEMENTATION
//#define STB_IMAGE_WRITE_IMPLEMENTATION
//#include "stb_image/stb_image.h"
//#include "stb_image/stb_image_resize.h"
//#include "stb_image/stb_image_write.h"
//#include "../tiny_dnn/tiny_dnn.h"
#include "../tiny_dnn/hls_lib/static_vector.h"
//#include "hls_video.h"
//#include "hls_opencv.h"

//using namespace tiny_dnn;
//using namespace tiny_dnn::activation;
using namespace std;

/*
// rescale output to 0-100
template <typename Activation>
double rescale(double x) {
    Activation a;
    return 100.0 * (x - a.scale().first) / (a.scale().second - a.scale().first);
}
*/
/*
void convert_image(const std::string& imagefilename,
    double minv,
    double maxv,
    int w,
    int h,
    vec_t& data) {
	// load
	int input_w, input_h, comp;
	stbi_uc* input_pixels = stbi_load(imagefilename.c_str(), &input_w, &input_h, &comp, 1);
	if (!input_pixels) {
		// cannot open, or it's not an image
		cout << "stbi_load failed";
		return;
	}

	// resize
	std::vector<uint8_t> resized(w * h);
	uint8_t* resized_pixels = &(resized[0]);
	int input_stride_in_bytes = input_w;
	if (!stbir_resize_uint8(input_pixels, input_w, input_h, input_stride_in_bytes, resized_pixels, w, h, w, 1)) {
		cout << "stbir_resize_uint8 failed";
		stbi_image_free(input_pixels);
		return;
	}
	stbi_image_free(input_pixels);

    // mnist dataset is "white on black", so negate required
    std::transform(resized.begin(), resized.end(), std::back_inserter(data),
        [=](uint8_t c) { return (255 - c) * (maxv - minv) / 255.0 + minv; });
}

bool save_image(const std::string& imagefilename,
	const image<>& img
	)
{
	// no scaling, save at original size
	int stride_bytes = img.width();
	int ret = stbi_write_png(
		imagefilename.c_str(),
		img.width(),
		img.height(),
		1,
		&(img.at(0, 0)),
		stride_bytes);
	return (ret != 0);
}
*/
/*
//void construct_net(network<sequential>& nn) {
void construct_net(network<sequential>& nn) {
    // connection table [Y.Lecun, 1998 Table.1]
#define O true
#define X false
    static const bool tbl[] = {
        O, X, X, X, O, O, O, X, X, O, O, O, O, X, O, O,
        O, O, X, X, X, O, O, O, X, X, O, O, O, O, X, O,
        O, O, O, X, X, X, O, O, O, X, X, O, X, O, O, O,
        X, O, O, O, X, X, O, O, O, O, X, X, O, X, O, O,
        X, X, O, O, O, X, X, O, O, O, O, X, O, O, X, O,
        X, X, X, O, O, O, X, X, O, O, O, O, X, O, O, O
    };
#undef O
#undef X

    // construct nets
    nn << convolutional_layer<tan_h>(32, 32, 5, 1, 6)  // C1, 1@32x32-in, 6@28x28-out
       << average_pooling_layer<tan_h>(28, 28, 6, 2)   // S2, 6@28x28-in, 6@14x14-out
       << convolutional_layer<tan_h>(14, 14, 5, 6, 16,
            connection_table(tbl, 6, 16))              // C3, 6@14x14-in, 16@10x10-in
       << average_pooling_layer<tan_h>(10, 10, 16, 2)  // S4, 16@10x10-in, 16@5x5-out
       << convolutional_layer<tan_h>(5, 5, 5, 16, 120) // C5, 16@5x5-in, 120@1x1-out
       << fully_connected_layer<tan_h>(120, 10);       // F6, 120-in, 10-out
}

void nn_load_weight(const std::string& dic, network<sequential>& nn){

	ifstream weights(dic);
	nn.load(weights);
}

void recognize(network<sequential>& nn, vec_t& data, vec_t& res) {

    // recognize
    res = nn.predict(data);
    //return res;
}

void print_score(vec_t res)
{
    vector<pair<double, int> > scores;

    // sort & print top-3
    for (int i = 0; i < 10; i++)
        scores.emplace_back(rescale<tan_h>(res[i]), i);

    sort(scores.begin(), scores.end(), greater<pair<double, int>>());

    for (int i = 0; i < 10; i++)
        cout << scores[i].second << "," << scores[i].first << endl;
}
*/

/*
    // save outputs of each layer
    for (size_t i = 0; i < nn.depth(); i++) {
        auto out_img = nn[i]->output_to_image();
        auto filename = "layer_" + std::to_string(i) + ".png";
        if (!save_image(filename, out_img)) {
            cout << "failed to save " << filename << endl;
        }
    }
    // save filter shape of first convolutional layer
    {
        auto weight = nn.at<convolutional_layer<tan_h>>(0).weight_to_image();
        auto filename = "weights.png";
        if (!save_image(filename, weight)) {
            cout << "failed to save " << filename << endl;
        }
    }
*/

void test_hls(int* a, int* b) {
//    int a[10], b[10];
    for( int i=0; i<10; i++){
	a[i] = i;
        b[i] += i;
    }
}

int test_vec_t(int i) {
    
    static const int arr[] = {16,2,77,29};
    s_vector<int, 16> abrr;
    for(int i=0; i<4; i++)
    {
	abrr[i] = arr[i];
    }
/*
    if(v[0] == 0) {
       return 0;
    }else{
	v[0] = 61;
    }
*/
    abrr.push_back(i);


    //for(int x: abrr) {
    //  cout << x;
    //}


    //return abrr.size(); 
    return abrr[3] + i;

    
}


int main(int argc, char** argv) {

    int c = 3;
/*
    network<sequential> nn;
    vec_t res;
    vec_t data;
*/
    int f = test_vec_t(c);
    //convert image to data matrix
/*
    const std::string filename = "4.bmp";
    convert_image(filename, -1.0, 1.0, 32, 32, data);

    //construct net and load weights to net
    construct_net(nn);

    nn_load_weight("LeNet-weights", nn);

    //prediction stage    
    recognize(nn, data, res);

    //print out ranked scores 
    print_score(res);
*/ 
    int a[10], b[10];
    cout<<"testing_hls..."<< f << endl;
    test_hls(a,b);
    return 0;

}
