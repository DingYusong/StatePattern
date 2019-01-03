//
//  ViewController.m
//  StatePattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "ViewController.h"
#import "DYSWork.h"

#import "DYSSleepState.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    DYSWork *work = [DYSWork new];
    work.hour = 6;
    [work writeProgram];

    work.hour = 10;
    [work writeProgram];

    work.hour = 13;
    [work writeProgram];

    work.hour = 19;
    [work writeProgram];

    work.hour = 21;
    [work writeProgram];

    DYSSleepState *sleep = [DYSSleepState new];
    work.state = sleep;
    [work writeProgram];
}

@end
