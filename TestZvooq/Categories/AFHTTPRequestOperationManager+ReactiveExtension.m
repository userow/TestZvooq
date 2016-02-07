//
//  AFHTTPRequestOperationManager+ReactiveExtension.m
//  TestZvooq
//
//  Created by Pavel Wasilenko on 160210.
//  Copyright © 2016 Test. All rights reserved.
//

#import "AFHTTPRequestOperationManager+ReactiveExtension.h"

static NSString * const kAFNetworkingReactiveExtensionErrorInfoOperationKey = @"com.alamofire.error";

@implementation AFHTTPRequestOperationManager (ReactiveExtension)

- (RACSignal *)signalForGET:(NSString *)URLString parameters:(NSDictionary *)parameters; {
    return [[RACSignal createSignal:^RACDisposable *(id <RACSubscriber> subscriber) {
        AFHTTPRequestOperation *op = [self GET:URLString parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
            [subscriber sendNext:operation];
            [subscriber sendCompleted];
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            NSMutableDictionary *userInfo = [error.userInfo mutableCopy] ?: [NSMutableDictionary dictionary];
            userInfo[kAFNetworkingReactiveExtensionErrorInfoOperationKey] = operation;
            NSError *errorWithOperation = [NSError errorWithDomain:error.domain code:error.code userInfo:userInfo];
            [subscriber sendError:errorWithOperation];
        }];
        return [RACDisposable disposableWithBlock:^{
            [op cancel];
        }];
    }] replayLazily];
}

@end
