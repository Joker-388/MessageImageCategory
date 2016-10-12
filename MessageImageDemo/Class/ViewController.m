//
//  ViewController.m
//  MessageImageDemo
//
//  Created by tronsis_ios on 16/10/12.
//  Copyright © 2016年 tronsis_ios. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+MessageImage.h"

@interface ViewController ()

@end

@implementation ViewController {
    UIImageView *_imageView0;
    UIImageView *_imageView1;
    UIImageView *_imageView2;
    unsigned int _index;
}

- (instancetype)init {
    self = [super init];
    
    _imageView0 = [UIImageView new];
    _imageView0.frame = CGRectMake(10, 84, 0, 0);
    _imageView0.backgroundColor = [UIColor blackColor];
    
    _imageView1 = [UIImageView new];
    _imageView1.frame = CGRectMake(10, CGRectGetMaxY(_imageView0.frame) + 80, 0, 0);
    _imageView1.backgroundColor = [UIColor blackColor];
    
    _imageView2 = [UIImageView new];
    _imageView2.frame = CGRectMake(10, CGRectGetMaxY(_imageView1.frame) + 80, 0, 0);
    _imageView2.backgroundColor = [UIColor blackColor];
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:_imageView0];
    [self.view addSubview:_imageView1];
    [self.view addSubview:_imageView2];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if (_index > 110) _index = 0;
    
    _imageView0.image = [[UIImage imageNamed:@"new"] hh_messageImageWithCount:_index imageSize:CGSizeMake(30, 30) tipRadius:10 tipTop:10 tipRight:10  fontSize:13 textColor:nil tipColor:nil];
    [_imageView0 sizeToFit];
    
    _imageView1.image = [[UIImage imageNamed:@"new"] hh_messageImageWithCount:_index imageSize:CGSizeMake(40, 30) tipRadius:14 tipTop:3 tipRight:15 fontSize:18 textColor:[UIColor brownColor] tipColor:[UIColor blueColor]];
    [_imageView1 sizeToFit];
    
    _imageView2.image = [[self circleImage] hh_messageImageWithCount:_index imageSize:CGSizeMake(60, 60) tipRadius:10 tipTop:0 tipRight:0 fontSize:10 textColor:[UIColor redColor] tipColor:[UIColor greenColor]];
    [_imageView2 sizeToFit];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:_imageView0.image style:UIBarButtonItemStyleDone target:self action:nil];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:_imageView1.image style:UIBarButtonItemStyleDone target:self action:nil];
    
    _index += 9;
}

- (UIImage *)circleImage {
    static UIImage *circleImage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(60, 60), NO, 0);
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetFillColorWithColor(context, [UIColor orangeColor].CGColor);
        UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 60, 60) cornerRadius:30];
        CGContextAddPath(context, path.CGPath);
        CGContextFillPath(context);
        circleImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
    });
    return circleImage;
}

@end
