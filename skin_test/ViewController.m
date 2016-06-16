//
//  ViewController.m
//  skin_test
//
//  Created by zhangzhihua on 16/3/15.
//  Copyright © 2016年 zhangzhihua. All rights reserved.
//

#import "ViewController.h"
#import "twoViewcontroller.h"
#import "SkinManager.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //添加观察者
       [ [SkinManager sharedSkinManager]addObserver:self forKeyPath:@"skin" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionInitial context:nil];
    
    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [pushButton addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    pushButton.backgroundColor = [UIColor whiteColor];
    pushButton.bounds = CGRectMake(0, 0, 200, 200);
    pushButton.center = self.view.center;
    [self.view addSubview:pushButton];
}

-(void)push{
    twoViewcontroller *twoView = [[twoViewcontroller alloc]init];
    [self.navigationController pushViewController:twoView animated:YES];
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    NSInteger skin = [change [@"new"]integerValue];
    switch (skin) {
        case 0:
            self.view.backgroundColor = [UIColor redColor];
            break;
        case 1:
            self.view.backgroundColor = [UIColor greenColor];
            break;
        case 2:
            self.view.backgroundColor = [UIColor blueColor];
            break;
        default:
            break;
    }
}


-(void)dealloc{

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
