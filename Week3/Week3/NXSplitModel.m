//
//  NXSplitModel.m
//  Week3
//
//  Created by 박태준 on 2015. 3. 18..
//  Copyright (c) 2015년 박태준. All rights reserved.
//

#import "NXSplitModel.h"

@implementation NXSplitModel
@synthesize splitJson;
- (NSArray*) MyJSONSerializationFrom:(NSString*)jsonData{
    
    splitJson = [jsonData componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"},:"]];
    
    return splitJson;
}
@end
