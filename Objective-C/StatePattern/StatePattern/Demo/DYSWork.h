//
//  DYSWork.h
//  StatePattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#include "DYSStateProtocol.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYSWork : NSObject

@property (nonatomic, strong) id<DYSStateProtocol> state;
@property (nonatomic, assign) CGFloat hour;
@property (nonatomic, assign) BOOL finished;

- (void)writeProgram;

@end

NS_ASSUME_NONNULL_END
