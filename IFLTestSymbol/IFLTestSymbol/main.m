//
//  main.m
//  IFLTestSymbol
//
//  Created by erlich wang on 2022/7/20.
//

#import <Foundation/Foundation.h>
#import "IFLSymbol.h"
#import "IFLTestSymbolFm/IFLSymbolFmFunc.h"
#import "IFLSymbolStaticLibFunc.h"

static void static_func(void) {
    NSLog(@"-- app - 静态函数 %s -- ", __func__);
}

void libIFLTestStaticLib_global_func(void);

//void mm_func(void);

int main(int argc, const char * argv[]) {
    global_func();
    static_func();
    
    IFLSymbolFmFunc *fmFunc = [IFLSymbolFmFunc new];
    [fmFunc framework_invoke];
    
    IFLSymbolStaticLibFunc *staticFunc = [IFLSymbolStaticLibFunc new];
    [staticFunc staticlib_invoke];
    
    
    libIFLTestStaticLib_global_func();
    
    // OTHER_LDFLAGS = $(inherited) -Xlinker -U -Xlinker _mm_func 骗过链接器ld 告诉链接器这个符号不需要管有没有定义
    // 虽然骗过了链接器，但是骗不过动态链接器 动态链接器扫描到这儿的时候，就去找mm_func，发现只有名称，没有函数体 Symbol not found: _mm_func
//    mm_func();
    
    
    return 0;
}
