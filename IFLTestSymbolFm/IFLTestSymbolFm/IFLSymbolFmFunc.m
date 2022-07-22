//
//  IFLSymbolFmFunc.m
//  IFLTestSymbolFm
//
//  Created by erlich wang on 2022/7/22.
//

#import "IFLSymbolFmFunc.h"

void global_func(void);

void global_func(void) {
    NSLog(@"-- framework - 全局函数 --%s --- ", __func__);
}

@implementation IFLSymbolFmFunc

- (void)framework_invoke {
    global_func();
}

@end
