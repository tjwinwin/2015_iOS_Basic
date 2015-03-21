//
//  NXSumModel.h
//  Week3
//
//  Created by 박태준 on 2015. 3. 18..
//  Copyright (c) 2015년 박태준. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NXSumModel : NSObject
@property (nonatomic, strong) NSString* makeJson;
- (NSString*) MyJSONMakerWithArray:(NSArray*)array;
//- (NSString*) MyJSONMakerWithDictionary:(NSDictionary*)dictionary;
//- (NSDictionary*)dictionary;
@end
