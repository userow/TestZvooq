//
//  AFHTTPRequestOperationManager+ReactiveExtension.h
//  TestZvooq
//
//  Created by Pavel Wasilenko on 160210.
//  Copyright © 2016 Test. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface AFHTTPRequestOperationManager (ReactiveExtension)

- (RACSignal *)signalForGET:(NSString *)URLString parameters:(NSDictionary *)parameters;

@end
