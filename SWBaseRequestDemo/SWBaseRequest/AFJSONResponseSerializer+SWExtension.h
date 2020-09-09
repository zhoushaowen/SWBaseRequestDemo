//
//  AFJSONResponseSerializer+SWExtension.h
//  ZhuHaiSocialAPP
//
//  Created by zhoushaowen on 2019/7/29.
//  Copyright © 2019 zhoushaowen. All rights reserved.
//

#import "AFURLResponseSerialization.h"

NS_ASSUME_NONNULL_BEGIN

@interface AFJSONResponseSerializer (SWExtension)

@property (nonatomic,copy) NSSet<NSString *> *sw_acceptableContentTypes;

@end

NS_ASSUME_NONNULL_END
