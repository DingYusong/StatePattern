//
//  DYSRestState.m
//  StatePattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "DYSRestState.h"
#import "DYSWork.h"

@implementation DYSRestState
- (void)writeProgram:(DYSWork *)work {
    NSLog(@"当前时间：{%.f}点，下班回家了", work.hour);
}

@end
