//
//  MediaModel.m
//  TestZvooq
//
//  Created by Pavel Wasilenko on 160208.
//  Copyright © 2016 Test. All rights reserved.
//

#import "MediaModel.h"

@implementation MediaModel

// Specify default values for properties

+ (NSDictionary *)defaultPropertyValues
{
    return @{ @"dateAdded" : [NSDate date] };
}

// Specify properties to ignore (Realm won't persist these)

//+ (NSArray *)ignoredProperties
//{
//    return @[];
//}

+ (NSString *)primaryKey {
    return @"uid";
}


-(NSString *) description
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
//    [formatter setTimeZone:[NSTimeZone timeZoneWithName:@"..."]];
    NSString *dateAdded = [formatter stringFromDate:self.dateAdded];
    
    NSString * description = [NSString stringWithFormat:@""
                              "uid = %@\n"
                              "captionText = %@\n"
                              "dateAdded = %@\n"
                              "lowResUrl = %@\n"
                              "lowResFilename = %@\n"
                              "stdResUrl = %@\n"
                              "stdResFilename = %@\n"
                              
                              ,
                              
                              self.uid,
                              self.captionText,
                              dateAdded,
                              self.lowResUrl,
                              self.lowResFilename,
                              self.stdResUrl,
                              self.stdResFilename
                              ];
    
    return description;
}
@end
