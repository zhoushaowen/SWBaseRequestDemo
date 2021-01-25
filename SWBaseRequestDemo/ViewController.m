//
//  ViewController.m
//  SWBaseRequestDemo
//
//  Created by zhoushaowen on 2020/8/31.
//  Copyright © 2020 coderZhou. All rights reserved.
//

#import "ViewController.h"
#import "SWBaseRequest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    SWBaseRequest *req = [SWBaseRequest new];
    [req startRequestWithCompletionBlockWithSuccess:^(SWBaseRequestStatus requestStatus, NSString * _Nullable message, id  _Nullable responseObject) {
        
    } failure:^(SWBaseRequestStatus requestStatus, NSString * _Nullable message, id  _Nullable responseObject) {
        
    }];
}


@end
