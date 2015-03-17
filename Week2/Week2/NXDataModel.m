//
//  NXDataModel.m
//  Week2
//
//  Created by Jung Kim on 3/11/15.
//  Copyright (c) 2015 NHN NEXT. All rights reserved.
//

#import "NXDataModel.h"

@implementation NXDataModel
{
    NSMutableArray *_dataArray;
}

- (id)initWithFilePath:(NSString*)filePath {
    
    self = [super init];
    if (self!=nil) {
        NSString* contents = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
        //ARRAY - DICTIONARY

        _dataArray = [[NSMutableArray alloc] initWithCapacity:1];
        
        NSArray *stringLines = [contents componentsSeparatedByString:@"\n"];
        for (NSString* aLine in stringLines) {
            NSArray *columns = [aLine componentsSeparatedByString:@","];
            NSDictionary *values = @{@"name":columns[0], @"number":columns[1], @"team":columns[2]};
            [_dataArray addObject:values];
        }
        NSLog(@"lines = %@", _dataArray);
    }
    return self;
}

- (NSString*)personNameAtIndex:(NSNumber*)index
{
    NSDictionary *values = [_dataArray objectAtIndex:index.intValue];
    return [values objectForKey:@"name"];
}


@end
