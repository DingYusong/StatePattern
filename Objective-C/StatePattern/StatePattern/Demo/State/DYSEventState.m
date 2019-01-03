//
//  DYSEventState.m
//  StatePattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "DYSEventState.h"
#import "DYSRestState.h"
#import "DYSSleepState.h"
#import "DYSWork.h"

@implementation DYSEventState
- (void)writeProgram:(DYSWork *)work {
    if (work.finished) {
        work.state = [[DYSRestState alloc] init];
        [work writeProgram];
    }
    else {
        if (work.hour < 21) {
            NSLog(@"当前时间：{%.f}点，加班哦，疲累之极", work.hour);
        }
        else {
            work.state = [[DYSSleepState alloc] init];
            [work writeProgram];
        }
    }
}

@end
