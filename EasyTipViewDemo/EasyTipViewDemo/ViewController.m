//
//  ViewController.m
//  EasyTipViewDemo
//
//  Created by FlyElephant on 2017/5/12.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#import "ViewController.h"
#import "EasyTipViewDemo-Swift.h"

@interface ViewController ()<EasyTipViewDelegate>
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    EasyTipView *tipView = [EasyTipView alloc]

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)easyTipViewDidDismiss:(EasyTipView *)tipView {
    NSLog(@"xiaoxi");
}

- (IBAction)action:(UIButton *)sender {
    Preferences *pre = [[Preferences alloc] init];
    pre.drawing.backgroundColor = [UIColor whiteColor];
    pre.drawing.borderWidth = 1.0;
    pre.drawing.foregroundColor = [UIColor redColor];
    pre.drawing.borderColor = [UIColor blueColor];
    pre.drawing.arrowPosition = ArrowPositionBottom;
    
    
    EasyTipView *tipView = [[EasyTipView alloc] initWithText:@"原生的Swift protocol里没有可选项，所有定义的方法都是必须实现的。如果我们想要像Objective-C里那样定义可选的接口方法，就需要将接口本身定义为Objective-C的，也即在protocol定义之前加上" preferences:pre delegate:self];
    [tipView showWithAnimated:YES forView:self.button withinSuperview:self.view];
}

@end
