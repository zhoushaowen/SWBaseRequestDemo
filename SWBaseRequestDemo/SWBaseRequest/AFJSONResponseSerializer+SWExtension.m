//
//  AFJSONResponseSerializer+SWExtension.m
//  ZhuHaiSocialAPP
//
//  Created by zhoushaowen on 2019/7/29.
//  Copyright © 2019 zhoushaowen. All rights reserved.
//

#import "AFJSONResponseSerializer+SWExtension.h"
#import <objc/runtime.h>

@implementation AFJSONResponseSerializer (SWExtension)

@dynamic sw_acceptableContentTypes;

- (NSSet<NSString *> *)acceptableContentTypes {
    return self.sw_acceptableContentTypes;
}

- (void)setSw_acceptableContentTypes:(NSSet<NSString *> *)sw_acceptableContentTypes {
    objc_setAssociatedObject(self, @selector(sw_acceptableContentTypes), sw_acceptableContentTypes, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSSet<NSString *> *)sw_acceptableContentTypes {
    NSSet *set = objc_getAssociatedObject(self, @selector(sw_acceptableContentTypes));
    if(set == nil){
        set = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html",@"text/plain", nil];
    }
    return set;
}



@end
