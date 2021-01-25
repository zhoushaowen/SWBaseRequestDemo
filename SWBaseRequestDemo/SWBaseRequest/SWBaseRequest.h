//
//  SWBaseRequest.h
//  SWBaseRequest
//
//  Created by zhoushaowen on 2020/8/31.
//  Copyright © 2020 coderZhou. All rights reserved.
//

#import "YTKRequest.h"

NS_ASSUME_NONNULL_BEGIN

typedef NSInteger SWBaseRequestStatus;

typedef void (^SWRequestCompletionBlock)(SWBaseRequestStatus requestStatus, NSString *_Nullable message, id _Nullable responseObject);

@interface SWBaseRequest : YTKRequest

- (void)startRequestWithCompletionBlockWithSuccess:(SWRequestCompletionBlock)success failure:(SWRequestCompletionBlock)failure;
#pragma mark - Overrive
- (void)handleSuccess:(SWRequestCompletionBlock)success
       responseObject:(id)responseObject
      responseHeaders:(NSDictionary *)responseHeaders;
- (void)handleFailure:(SWRequestCompletionBlock)failure
                error:(NSError *)error
      responseHeaders:(NSDictionary *)responseHeaders;
- (id)formatResponseObject:(id)responseObject;

@end

NS_ASSUME_NONNULL_END
