//
//  PopularProtocol.h
//  TestZvooq
//
//  Created by Pavel Wasilenko on 160210.
//  Copyright © 2016 Test. All rights reserved.
//

#import <ReactiveCocoa/ReactiveCocoa.h>

@protocol PopularProtocol <NSObject>

- (RACSignal *)getOnlinePopularSignal;
- (RACSignal *)getCachedPopularSignal;

@end
