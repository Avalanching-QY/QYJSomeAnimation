//
//  ViewController.m
//  QYJSomeAnimation
//
//  Created by Avalanching on 2017/3/26.
//  Copyright © 2017年 Avalanching. All rights reserved.
//

#import "ViewController.h"
#import "NSString+ReplaceUnicode.h"

#define EMOJI_CODE_TO_SYMBOL(x) ((((0x808080F0 | (x & 0x3F000) >> 4) | (x & 0xFC0) << 10) | (x & 0x1C0000) << 18) | (x & 0x3F) << 24)

@interface ViewController ()
@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UITextField *textField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
