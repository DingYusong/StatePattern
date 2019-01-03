//
//  DYSForenoonState.m
//  StatePattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "DYSForenoonState.h"
#import "DYSNoonState.h"
#import "DYSWork.h"

@implementation DYSForenoonState

- (void)writeProgram:(DYSWork *)work {
    if (work.hour < 12) {
        NSLog(@"当前时间：{%.f}点，上午工作，精神百倍", work.hour);
    }
    else {
        work.state = [[DYSNoonState alloc] init];
        [work writeProgram];
    }
}

@end
