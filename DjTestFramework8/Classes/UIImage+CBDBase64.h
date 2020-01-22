//
//  UIImage+CBDBase64.h
//  CarBaDa
//
//  Created by zjb on 2018/8/15.
//  Copyright © 2018年 wyj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (CBDBase64)
+ (UIImage *)stringToImage:(NSString *)str;
+ (NSString *)imageToString:(UIImage *)image;
@end
