//
//  ViewController.m
//  Demo5_绘制二维码
//
//  Created by tarena on 16/6/22.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1.创建一个二维码种类的滤镜
    CIFilter *filter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    //2.恢复滤镜的默认设置
    [filter setDefaults];
    //3.将二维码的字符串 生成 二进制数据
    NSString *string = @"http://www.baidu.com";
    NSData  *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    
    //4.将二进制数据设置到 滤镜
    //使用 KVC 给 滤镜类的私有属性赋值
    [filter setValue:data forKey:@"inputMessage"];
    //5.获取 滤镜生成的 二维码图片
    CIImage *outputImage = [filter outputImage];
    UIImage *image = [UIImage imageWithCIImage:outputImage];
    
    
    //6.将二维码生成的图片 放到 iamgeView中进行显示
    self.imageView.image = image;
    
    
    
    //创建画布
    //开始绘制
    
//   二维码 生成的图片 image 绘制在画布上
    
    //创建中间的图片
//    UIImage *image = [UIImage imageNamed:@"role3"];
    //将中间的图片 绘制在画布上
    
    //将画布上的内容 生成一张图片
    
    //结束绘制
    
    //设置 imageView 的 image 为画布生成的图片
    
    
  
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
