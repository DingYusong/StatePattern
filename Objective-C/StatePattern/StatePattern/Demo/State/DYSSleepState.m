//
//  DYSSleepState.m
//  StatePattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "DYSSleepState.h"
#import "DYSWork.h"

@implementation DYSSleepState
- (void)writeProgram:(DYSWork *)work {
    NSLog(@"当前时间：{%.f}点，不行了，睡着了", work.hour);
}

@end
