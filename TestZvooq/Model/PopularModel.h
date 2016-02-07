//
//  InstagramMediaModel.h
//  TestZvooq
//
//  Created by Pavel Wasilenko on 160208.
//  Copyright © 2016 Test. All rights reserved.
//

#import <Realm/Realm.h>
#import "MediaModel.h"

@interface PopularModel : RLMObject

@property RLMArray<MediaModel> *medias;
@property NSDate *dateAdded;


@end
