//
//  ViewController.m
//  githubDome
//
//  Created by WENGZHANG XIE on 2017/7/5.
//  Copyright © 2017年 WENGZHANG XIE. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    
    button.frame = CGRectMake(0, 0,50, 50);
    button.center = self.view.center;
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(buttonActionClick:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"点我吧" forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    self.title = @"A页面";
}
- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden = YES;
    
}
- (void)buttonActionClick:(UIButton *)buttonm
{
    SecondViewController * second = [[SecondViewController alloc]init];
    UINavigationController * navi = [[UINavigationController alloc]initWithRootViewController:second];
    
    [self presentViewController:navi animated:YES completion:nil];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
