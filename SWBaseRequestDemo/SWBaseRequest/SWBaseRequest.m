//
//  SWBaseRequest.m
//  SWBaseRequest
//
//  Created by zhoushaowen on 2020/8/31.
//  Copyright © 2020 coderZhou. All rights reserved.
//

#import "SWBaseRequest.h"

@implementation SWBaseRequest

- (YTKRequestMethod)requestMethod {
    return YTKRequestMethodPOST;
}

- (YTKRequestSerializerType)requestSerializerType {
    return YTKRequestSerializerTypeHTTP;
}

- (YTKResponseSerializerType)responseSerializerType {
    return YTKResponseSerializerTypeJSON;
}

- (NSTimeInterval)requestTimeoutInterval {
    return 30.0;
}

- (void)startRequestWithCompletionBlockWithSuccess:(SWRequestCompletionBlock)success failure:(SWRequestCompletionBlock)failure {
    [self startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        [self handleSuccess:success responseObject:request.responseObject responseHeaders:request.responseHeaders];
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        [self handleFailure:failure error:request.error responseHeaders:request.responseHeaders];
    }];
}

- (void)handleSuccess:(SWRequestCompletionBlock)success
       responseObject:(id)responseObject
      responseHeaders:(NSDictionary *)responseHeaders {
    id formatObj = [self formatResponseObject:responseObject];
    if(success){
        success(0,nil,formatObj);
    }
}

- (void)handleFailure:(SWRequestCompletionBlock)failure
                error:(NSError *)error
      responseHeaders:(NSDictionary *)responseHeaders {
    if(failure){
        failure(1,error.localizedDescription,nil);
    }
}

- (id)formatResponseObject:(id)responseObject
{
    return responseObject;
}


@end
