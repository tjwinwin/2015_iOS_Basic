//
//  NXDataModel.h
//  Week2
//
//  Created by Jung Kim on 3/11/15.
//  Copyright (c) 2015 NHN NEXT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NXDataModel : NSObject

- (id)initWithFilePath:(NSString*)filePath;
- (NSString*)personNameAtIndex:(NSNumber*)index;
@end
