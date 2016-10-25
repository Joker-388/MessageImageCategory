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

/**
 Message tip icon

 @param count     message count
 @param imageSize imageSize
 @param tipRadius tipRadius
 @param tipTop    topMargin
 @param tipRight  rightMargin
 @param fontSize  tipTextFontSize
 @param textColor tipTextColor
 @param tipColor  tipBackgroundColor

 @return New image with tip count in the top-right corner
 */
- (instancetype)hh_messageImageWithCount:(NSInteger)count imageSize:(CGSize)imageSize tipRadius:(CGFloat)tipRadius tipTop:(CGFloat)tipTop tipRight:(CGFloat)tipRight fontSize:(CGFloat)fontSize textColor:(UIColor *)textColor tipColor:(UIColor *)tipColor;

@end
