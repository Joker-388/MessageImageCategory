Message tip icon 
====
[![preview](https://travis-ci.org/Joker-388/MessageImageCategory.svg?branch=master)](http://www.sixstr.me)&nbsp;
[![Support](https://img.shields.io/badge/support-iOS%206%2B%20-blue.svg?style=flat)](https://www.apple.com/nl/ios/)&nbsp;
<br><br>
This is category for UIImage, you can add message count tip icon in the top-right corner.<br>
<br> 
![preview](https://github.com/Joker-388/MessageImageCategory/blob/master/Preview/ms_image.gif)  
<br> 
You can use it like this:<br>
```objective-c
_imageView0.image = [[UIImage imageNamed:@"new"] hh_messageImageWithCount:_index imageSize:CGSizeMake(30, 30) tipRadius:10 tipTop:10 tipRight:10  fontSize:13 textColor:nil tipColor:nil];
_imageView1.image = [[UIImage imageNamed:@"new"] hh_messageImageWithCount:_index imageSize:CGSizeMake(40, 30) tipRadius:14 tipTop:3 tipRight:15 fontSize:18 textColor:[UIColor brownColor] tipColor:[UIColor blueColor]];
_imageView2.image = [[self circleImage] hh_messageImageWithCount:_index imageSize:CGSizeMake(60, 60) tipRadius:10 tipTop:0 tipRight:0 fontSize:10 textColor:[UIColor redColor] tipColor:[UIColor greenColor]];
```

Description<br>
```objective-c
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
```
  
消息个数展示图片快速生成的分类
====

UIImage的一个分类，快速在当前的图片右上角添加一个显示消息的个数的圆形图标。<br>
使用方法如下：<br>
```objective-c
_imageView0.image = [[UIImage imageNamed:@"new"] hh_messageImageWithCount:_index imageSize:CGSizeMake(30, 30) tipRadius:10 tipTop:10 tipRight:10  fontSize:13 textColor:nil tipColor:nil];
_imageView1.image = [[UIImage imageNamed:@"new"] hh_messageImageWithCount:_index imageSize:CGSizeMake(40, 30) tipRadius:14 tipTop:3 tipRight:15 fontSize:18 textColor:[UIColor brownColor] tipColor:[UIColor blueColor]];
_imageView2.image = [[self circleImage] hh_messageImageWithCount:_index imageSize:CGSizeMake(60, 60) tipRadius:10 tipTop:0 tipRight:0 fontSize:10 textColor:[UIColor redColor] tipColor:[UIColor greenColor]];
```

参数：
```objective-c
/**
 在图片右上角添加消息数

 @param count     消息数
 @param imageSize 图片尺寸
 @param tipRadius 提示圆圈半径
 @param tipTop    顶部位置调节
 @param tipRight  右侧位置调节
 @param fontSize  消息数文字尺寸
 @param textColor 消息数文字颜色
 @param tipColor  提示圆圈背景色

 @return New image with tip count in the top-right corner
 */
```

