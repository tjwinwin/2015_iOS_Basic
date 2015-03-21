//
//  NXSumModel.m
//  Week3
//
//  Created by 박태준 on 2015. 3. 18..
//  Copyright (c) 2015년 박태준. All rights reserved.
//

#import "NXSumModel.h"

@implementation NXSumModel
@synthesize makeJson;
- (NSString*) MyJSONMakerWithArray:(NSArray*)array{
    makeJson = [array componentsJoinedByString: @","];
    return makeJson;
}

@end
