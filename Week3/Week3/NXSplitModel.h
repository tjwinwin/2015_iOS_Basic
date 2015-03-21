//
//  NXSplitModel.h
//  Week3
//
//  Created by 박태준 on 2015. 3. 18..
//  Copyright (c) 2015년 박태준. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NXSplitModel : NSObject
@property (nonatomic, strong) NSArray* splitJson;
- (NSArray*) MyJSONSerializationFrom:(NSString*)jsonData;
@end
