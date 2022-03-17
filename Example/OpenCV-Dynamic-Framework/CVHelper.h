//
//  CVHelper.h
//  Pods
//
//  Created by Eddie Hiu-Fung Lau on 16/3/2022.
//

#ifndef CVHelper_h
#define CVHelper_h

NS_ASSUME_NONNULL_BEGIN

@interface CVHelper : NSObject

+ (UIImage *) crop:(UIImage *)image withRect:(CGRect)rect;

@end

NS_ASSUME_NONNULL_END

#endif /* CVHelper_h */
