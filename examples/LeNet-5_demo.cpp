//This is a demo of using Trained LeNet-5 to recognize hand written numbers
//Training of the network weights are not included
//For traing, please refer to main.cpp

#include <iostream>
#include <fstream>
#include <iterator>
#include <vector>
#include <opencv2/imgproc.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>
#include "../tiny_dnn/tiny_dnn.h"

using namespace tiny_dnn;
using namespace tiny_dnn::activation;
using namespace std;

// rescale output to 0-100
template <typename Activation>
double rescale(double x) {
    Activation a;
    return 100.0 * (x - a.scale().first) / (a.scale().second - a.scale().first);
}

// convert tiny_dnn::image to cv::Mat and resize
cv::Mat image2mat(image<>& img) {
    cv::Mat ori(img.height(), img.width(), CV_8U, &img.at(0, 0));
    cv::Mat resized;
    cv::resize(ori, resized, cv::Size(), 3, 3, cv::INTER_AREA);
    return resized;
}

void convert_image(const std::string& imagefilename,
    double minv,
    double maxv,
    int w,
    int h,
    vec_t& data) {
    auto img = cv::imread(imagefilename, cv::IMREAD_GRAYSCALE);
    if (img.data == nullptr) return; // cannot open, or it's not an image

    cv::Mat_<uint8_t> resized;
    cv::resize(img, resized, cv::Size(w, h));

    // mnist dataset is "white on black", so negate required
    std::transform(resized.begin(), resized.end(), std::back_inserter(data),
        [=](uint8_t c) { return (255 - c) * (maxv - minv) / 255.0 + minv; });
}

//void construct_net(network<mse, adagrad>& nn) {
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

void recognize(const std::string& dictionary, const std::string& filename) {
    network<sequential> nn;

    ifstream dic(dictionary);

    // convert imagefile to vec_t
    vec_t data;
    convert_image(filename, -1.0, 1.0, 32, 32, data);

//write image file into pic_data
std::ofstream pic_data("../temp_data/pic_data");
std::ostream_iterator<float> output_iterator(pic_data,"\n");
std::copy(data.begin(), data.end(), output_iterator);


    //Construct LeNet-5 first
    construct_net(nn);
    // load nets
    nn.load(dic);
    // recognize
    auto res = nn.predict(data);
    vector<pair<double, int> > scores;
    // sort & print top-3
    for (int i = 0; i < 10; i++)
        scores.emplace_back(rescale<tan_h>(res[i]), i);

    sort(scores.begin(), scores.end(), greater<pair<double, int>>());

    for (int i = 0; i < 3; i++)
        cout << scores[i].second << "," << scores[i].first << endl;


/*
    // visualize outputs of each layer
    for (size_t i = 0; i < nn.depth(); i++) {
        auto out_img = nn[i]->output_to_image();
        cv::imshow("layer:" + std::to_string(i), image2mat(out_img));
    }
    // visualize filter shape of first convolutional layer
    auto weight = nn.at<convolutional_layer<tan_h>>(0).weight_to_image();
    cv::imshow("weights:", image2mat(weight));

    cv::waitKey(0);
*/
}

int main(int argc, char** argv) {
    if (argc != 2) {
        cout << "please specify image file";
        return 0;
    }
    recognize("LeNet-weights", argv[1]);
}
