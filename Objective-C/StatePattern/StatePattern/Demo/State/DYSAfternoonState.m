//
//  DYSAfternoonState.m
//  StatePattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "DYSAfternoonState.h"
#import "DYSEventState.h"
#import "DYSWork.h"

@implementation DYSAfternoonState
- (void)writeProgram:(DYSWork *)work {
    if (work.hour < 17) {
        NSLog(@"当前时间：{%.f}点，下午状态还不错，继续努力", work.hour);
    }
    else {
        work.state = [[DYSEventState alloc] init];
        [work writeProgram];
    }
}

@end
