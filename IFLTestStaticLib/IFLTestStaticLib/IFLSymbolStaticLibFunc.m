//
//  IFLSymbolStaticLibFunc.m
//  IFLTestStaticLib
//
//  Created by erlich wang on 2022/7/22.
//

#import "IFLSymbolStaticLibFunc.h"

void global_func(void) {
    NSLog(@"-- 静态库 - 全局函数 --%s --- ", __func__);
}

@implementation IFLSymbolStaticLibFunc

- (void)staticlib_invoke {
    global_func();
}

@end
