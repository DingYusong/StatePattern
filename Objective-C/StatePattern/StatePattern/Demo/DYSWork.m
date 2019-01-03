//
//  DYSWork.m
//  StatePattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "DYSWork.h"
#import "DYSForenoonState.h"

@implementation DYSWork

- (instancetype)init {
    self = [super init];
    if (self) {
        _state = [DYSForenoonState new];
    }
    return self;
}

- (void)writeProgram {
    [self.state writeProgram:self];
}

@end
