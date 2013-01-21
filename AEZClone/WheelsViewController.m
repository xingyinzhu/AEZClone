//
//  SecondViewController.m
//  AEZClone
//
//  Created by Xingyin Zhu on 13-1-19.
//  Copyright (c) 2013年 Xingyin Zhu. All rights reserved.
//

#import "WheelsViewController.h"

@interface WheelsViewController ()

@end

@implementation WheelsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark ios rotate 6.0 api
- (BOOL)shouldAutorotate
{
    return NO;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
}

@end
