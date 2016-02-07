//
//  MediaModel.h
//  TestZvooq
//
//  Created by Pavel Wasilenko on 160208.
//  Copyright © 2016 Test. All rights reserved.
//

#import <Realm/Realm.h>

@interface MediaModel : RLMObject

@property NSString  * uid;
@property NSString  * captionText;
@property NSDate    * dateAdded;
@property NSString  * lowResUrl;
@property NSString  * lowResFilename;
@property NSString  * stdResUrl;
@property NSString  * stdResFilename;

@end

// This protocol enables typed collections. i.e.:
// RLMArray<InstagramMediaModel>
RLM_ARRAY_TYPE(MediaModel)
