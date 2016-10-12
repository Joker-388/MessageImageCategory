//
//  HHNavitionViewController.m
//  MessageImageDemo
//
//  Created by tronsis_ios on 16/10/12.
//  Copyright © 2016年 tronsis_ios. All rights reserved.
//

#import "HHNavitionViewController.h"

@implementation HHNavitionViewController

+ (void)initialize {
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:[self class], nil];
    bar.barTintColor = [UIColor darkGrayColor];
    bar.tintColor = [UIColor whiteColor];
    bar.translucent = NO;
    bar.barStyle = UIBarStyleBlack;    
}

@end
