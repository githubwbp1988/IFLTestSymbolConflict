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

int main(int argc, const char * argv[]) {
    global_func();
    static_func();
    
    IFLSymbolFmFunc *fmFunc = [IFLSymbolFmFunc new];
    [fmFunc framework_invoke];
    
    IFLSymbolStaticLibFunc *staticFunc = [IFLSymbolStaticLibFunc new];
    [staticFunc staticlib_invoke];
    
    
    libIFLTestStaticLib_global_func();
    
    
    return 0;
}
