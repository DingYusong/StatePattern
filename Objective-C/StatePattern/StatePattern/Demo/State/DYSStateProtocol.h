//
//  DYSStateProtocol.h
//  StatePattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class DYSWork;
@protocol DYSStateProtocol <NSObject>

- (void)writeProgram:(DYSWork *)work;

@end

NS_ASSUME_NONNULL_END
