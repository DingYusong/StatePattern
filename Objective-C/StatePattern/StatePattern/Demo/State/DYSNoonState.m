//
//  DYSNoonState.m
//  StatePattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "DYSNoonState.h"
#import "DYSAfternoonState.h"
#import "DYSWork.h"

@implementation DYSNoonState
- (void)writeProgram:(DYSWork *)work {
    if (work.hour < 13) {
        NSLog(@"当前时间：{%.f}点，饿了，午饭；犯困，午休", work.hour);
    }
    else {
        work.state = [[DYSAfternoonState alloc] init];
        [work writeProgram];
    }
}

@end
