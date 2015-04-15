//
//  TJDataModel.m
//  MidTerm
//
//  Created by 박태준 on 2015. 4. 15..
//  Copyright (c) 2015년 박태준. All rights reserved.
//

#import "TJDataModel.h"

@implementation TJDataModel

{
    NSMutableArray* _internalData;
}

-(id)init {
    self = [super init];
    if (self!=nil) {
//        NSString *data = @"[{\"title\":\"초록\",\"image\":\"01.jpg\",\"date\":\"20140116\"},\
//        {\"title\":\"장미\",\"image\":\"02.jpg\",\"date\":\"20140505\"},\
//        {\"title\":\"낙엽\",\"image\":\"03.jpg\",\"date\":\"20131212\"},\
//        {\"title\":\"계단\",\"image\":\"04.jpg\",\"date\":\"20130301\"},\
//        {\"title\":\"벽돌\",\"image\":\"05.jpg\",\"date\":\"20140101\"},\
//        {\"title\":\"바다\",\"image\":\"06.jpg\",\"date\":\"20130707\"},\
//        {\"title\":\"벌레\",\"image\":\"07.jpg\",\"date\":\"20130815\"},\
//        {\"title\":\"나무\",\"image\":\"08.jpg\",\"date\":\"20131231\"},\
//        {\"title\":\"흑백\",\"image\":\"09.jpg\",\"date\":\"20140102\"}]";

    }
    return self;
}
//
//- (void) loadDataWith: (NSString*)jsonData {
//    _internalData = [NSJSONSerialization JSONObjectWithData:[jsonData dataUsingEncoding:NSUTF8StringEncoding]
//                                                    options:0
//                                                      error:nil];
//}
//
//- (NSDictionary*)itemAtIndex: (int)index {
//    return _internalData[index];
//}
//
//- (NSArray*) MyJSONSerializationFrom:(NSString*)jsonData {
//    NSMutableArray* resultArray = [NSMutableArray arrayWithCapacity:5];
//    NSCharacterSet* aSet = [NSCharacterSet characterSetWithCharactersInString:@"}{"];
//    NSCharacterSet* bSet = [NSCharacterSet characterSetWithCharactersInString:@":,"];
//    
//    NSArray* step1Array = [jsonData componentsSeparatedByCharactersInSet:aSet];
//    NSLog(@"%@,", step1Array);
//    
//    for (NSString* step1 in step1Array) {
//        if (step1.length>2) {
//            NSArray* step2Array = [step1 componentsSeparatedByCharactersInSet:bSet];
//            NSLog(@"%@", step2Array);
//            NSMutableArray* valueList = [NSMutableArray arrayWithCapacity:4];
//            
//            for (NSString* value in step2Array) {
//                NSMutableString* newString = [value mutableCopy];
//                [newString replaceOccurrencesOfString:@"\"" withString:@"" options:0 range:NSMakeRange(0, newString.length)];
//                [newString replaceOccurrencesOfString:@" " withString:@"" options:0 range:NSMakeRange(0, newString.length)];
//                [valueList addObject:newString];
//            }
//            NSDictionary* row = @{valueList[0]:valueList[1], valueList[2]:valueList[3]};
//            [resultArray addObject:row];
//        }
//    }
//    return resultArray;
//}

@end
