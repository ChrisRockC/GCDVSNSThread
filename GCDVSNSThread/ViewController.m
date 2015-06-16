//
//  ViewController.m
//  GCDVSNSThread
//
//  Created by mac on 15/6/17.
//  Copyright (c) 2015年 CC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self gcdDemo];
}

-(void)gcdDemo{
    //这些方法内存实现是封装了，我们是通过相关提示如：completion 知其调用时期
    //或者我们可以NSLog调试也可知道其中的调用顺序
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"异步操作任务--%@",[NSThread currentThread]);
        
        dispatch_sync(dispatch_get_main_queue(), ^{
            NSLog(@"回到主线程更新UI----%@",[NSThread currentThread]);
        });
        
    });
}

@end
