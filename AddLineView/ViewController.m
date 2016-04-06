//
//  ViewController.m
//  AddLineView
//
//  Created by SINOKJ on 16/3/22.
//  Copyright © 2016年 Dyf. All rights reserved.
//

#import "ViewController.h"
//#import "UIView+AddLine.h"
#import "DFKit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor grayColor];
    UIView *v = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    v.backgroundColor = [UIColor darkGrayColor];
    [DFKit addLineWithUI:v andDirection:DirectionTop andColor:[UIColor redColor] andCoarse:50];
    
    UIButton *btn = [UIButton buttonWithType:(UIButtonTypeSystem)];
    btn.frame = CGRectMake(100, 300, 100, 200);
    btn.backgroundColor = [UIColor purpleColor];
    [DFKit addLineWithUI:btn andDirection:DirectionLeft andColor:[UIColor redColor] andCoarse:10];
//    [btn addLineWithDirection:DirectionLeft andColor:[UIColor redColor] andCoarse:10];
    
    [self.view addSubview:btn];
    [self.view addSubview:v];
    [DFKit addAlerViewWithDelegateController:self andTitle:@"a" andMessage:@"b" andBtn:@"2",nil];
//    [DFKit addAlertControllerWithController:self andTitle:@"a" andMessage:@"b" andAlertStyle:(UIAlertControllerStyleAlert) andAction:@"a",@"b",nil];
    
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    NSLog(@"%ld",buttonIndex);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
