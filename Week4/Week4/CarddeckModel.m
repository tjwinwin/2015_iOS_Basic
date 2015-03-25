//
//  CarddeckModel.m
//  Week4
//
//  Created by 박태준 on 2015. 3. 25..
//  Copyright (c) 2015년 박태준. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "CarddeckModel.h"

@implementation CarddeckModel

- (id) init {
    self = [super init];
    if (self) {
        _spadeCards    = @[ @"sA", @"s2", @"s3", @"s4", @"s5", @"s6", @"s7", @"s8", @"s9", @"s10", @"sJ", @"sQ", @"sK" ];
        _diamondCards  = @[ @"dA", @"d2", @"d3", @"d4", @"d5", @"d6", @"d7", @"d8", @"d9", @"d10", @"dJ", @"dQ", @"dK" ];
        _heartCards    = @[ @"hA", @"h2", @"h3", @"h4", @"h5", @"h6", @"h7", @"h8", @"h9", @"h10", @"hJ", @"hQ", @"hK" ];
        _cloverCards   = @[ @"cA", @"c2", @"c3", @"c4", @"c5", @"c6", @"c7", @"c8", @"c9", @"c10", @"cJ", @"cQ", @"cK" ];
        _totalCardDeck = @[ _spadeCards, _diamondCards, _heartCards, _cloverCards ];
        // 순서를 지켜야 함
        // exception 'NSInvalidArgumentException', reason: '*** -[__NSPlaceholderArray initWithObjects:count:]: attempt to insert nil object from objects[0]'
    }
    return self;
}

// The NSIndexPath class represents the path to a specific node in a tree of nested array collections. This path is known as an index path.
- (NSString*)cardImageForIndex:(NSIndexPath*)index {
    return _totalCardDeck[index.section][index.row];
}

- (void) randomize{
    NSInteger shape  = arc4random() %  4;
    NSInteger number = arc4random() % 13;
    
    // NSNotificationCenter: An NSNotificationCenter object (or simply, notification center) provides a mechanism for broadcasting information within a program. An NSNotificationCenter object is essentially a notification dispatch table.
    // postNotificationName: Creates a notification with a given name, sender, and information and posts it to the receiver.
    [[NSNotificationCenter defaultCenter] postNotificationName:@"randomize"
                                                        object:nil
                                                      userInfo:@{ @"shape" :[NSNumber numberWithInteger:shape],
                                                                  @"number":[NSNumber numberWithInteger:number] }];
    self.lastShape = shape;
    self.lastNumber = number;
}

@end
