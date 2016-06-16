//
//  twoViewcontroller.m
//  skin_test
//
//  Created by zhangzhihua on 16/3/15.
//  Copyright © 2016年 zhangzhihua. All rights reserved.
//

#import "twoViewcontroller.h"
#import "SkinManager.h"

@interface  twoViewcontroller(){
    
    UIButton *_colorButton;
    
}

@end

@implementation twoViewcontroller


-(void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    
    _colorButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _colorButton.backgroundColor = [UIColor yellowColor];
    [_colorButton addTarget:self action:@selector(valueChange) forControlEvents:UIControlEventTouchUpInside];
    _colorButton.frame = CGRectMake(0, 0, 200, 200);
    _colorButton.center  = self.view.center;
    [self.view addSubview:_colorButton];
}
-(void)valueChange{
    [SkinManager sharedSkinManager].skin = 2;
}


@end
