//
//  UIImage+MessageImage.h
//  MessageImageDemo
//
//  Created by tronsis_ios on 16/10/12.
//  Copyright © 2016年 tronsis_ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (MessageImage)

@property (nonatomic) BOOL hh_isDecoded;

- (instancetype)hh_messageImageWithCount:(NSInteger)count imageSize:(CGSize)imageSize tipRadius:(CGFloat)tipRadius tipTop:(CGFloat)tipTop tipRight:(CGFloat)tipRight fontSize:(CGFloat)fontSize textColor:(UIColor *)textColor tipColor:(UIColor *)tipColor;

@end
