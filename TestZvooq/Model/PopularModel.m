//
//  InstagramPopularModel.m
//  TestZvooq
//
//  Created by Pavel Wasilenko on 160208.
//  Copyright © 2016 Test. All rights reserved.
//

#import "PopularModel.h"

@implementation PopularModel

+ (NSDictionary *)defaultPropertyValues
{
    return @{ @"dateAdded" : [NSDate date] };
}

-(NSString *)description
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    //    [formatter setTimeZone:[NSTimeZone timeZoneWithName:@"..."]];
    NSString *dateAdded = [formatter stringFromDate:self.dateAdded];
    
    return [NSString stringWithFormat:@""
            "dateAdded = %@\n\n"
            "medias = { \n"
            "%@\n"
            "}\n"
            ,
            dateAdded,
            self.medias
            ];
}

@end
