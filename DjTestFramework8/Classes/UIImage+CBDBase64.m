//
//  UIImage+CBDBase64.m
//  CarBaDa
//
//  Created by zjb on 2018/8/15.
//  Copyright © 2018年 wyj. All rights reserved.
//

#import "UIImage+CBDBase64.h"

@implementation UIImage (CBDBase64)
// 64base字符串转图片

+ (UIImage *)stringToImage:(NSString *)str {
    
    NSData * imageData =[[NSData alloc] initWithBase64EncodedString:str options:NSDataBase64DecodingIgnoreUnknownCharacters];
    
    UIImage *photo = [UIImage imageWithData:imageData];
    
    return photo;
    
}

// 图片转64base字符串

+ (NSString *)imageToString:(UIImage *)image {
    
    CGFloat fMultiple = [UIScreen mainScreen].bounds.size.width / image.size.width;
    
    NSData *imagedata = UIImageJPEGRepresentation(image, fMultiple);
    
    NSString *image64 = [imagedata base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    
    return image64;
    
}

@end
