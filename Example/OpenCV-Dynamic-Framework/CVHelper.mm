//
//  CVHelper.m
//  abseil
//
//  Created by Eddie Hiu-Fung Lau on 16/3/2022.
//

#ifdef __cplusplus

// https://www.toptal.com/opencv/object-detection-opencv-swift

#undef NO
#import <opencv2/opencv.hpp>
#import <opencv2/imgcodecs/ios.h>
#import <opencv2/videoio/cap_ios.h>

#endif

#import <Foundation/Foundation.h>
#import "CVHelper.h"


@implementation CVHelper

+ (UIImage *) crop:(UIImage *)image withRect:(CGRect)rect {
    
    cv::Mat mat;
    UIImageToMat(image, mat);
    cv::Rect roi = cv::Rect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
    return MatToUIImage(mat(roi));
    
}

@end
