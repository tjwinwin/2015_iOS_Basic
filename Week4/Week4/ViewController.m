//
//  ViewController.m
//  Week4
//
//  Created by 박태준 on 2015. 3. 25..
//  Copyright (c) 2015년 박태준. All rights reserved.
//

#import "ViewController.h"
#import "CarddeckModel.h"

@interface ViewController ()
{
    CarddeckModel* _cardModel;
}
@property (strong, nonatomic) IBOutlet UIImageView *cardImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // ￼￼￼An NSNotificationCenter object (or simply, notification center) provides a mechanism for broadcasting information within a program. An NSNotificationCenter object is essentially a notification dispatch table.
    // defaultCenter: Getting the Notification Center
    // addObserver: Object registering as an observer. This value must not be nil.
    // selector: Selector that specifies the message the receiver sends notificationObserver to notify it of the notification posting. The method specified by notificationSelector must have one and only one argument (an instance of NSNotification).
    // name: The name of the notification for which to register the observer; that is, only notifications with this name are delivered to the observer. If you pass nil, the notification center doesn’t use a notification’s name to decide whether to deliver it to the observer.
    // object: The object whose notifications the observer wants to receive; that is, only notifications sent by this sender are delivered to the observer. If you pass nil, the notification center doesn’t use a notification’s sender to decide whether to deliver it to the observer.
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(randomizedCard:)
                                                 name:@"randomize"
                                               object:nil];
    
    _cardModel = [[CarddeckModel alloc] init];
    // addObserver: The object to register for KVO notifications. The observer must implement the key-value observing method observeValueForKeyPath:ofObject:change:context:.
    // forKeyPath: The key path, relative to the receiver, of the property to observe. This value must not be nil.
    // options: A combination of the NSKeyValueObservingOptions values that specifies what is included in observation notifications.
    // NSKeyValueObservingOptionNew: Indicates that the change dictionary should provide the new attribute value, if applicable.
    // context: Arbitrary data that is passed to anObserver in observeValueForKeyPath:ofObject:change:context:.
    [_cardModel addObserver:self forKeyPath:@"lastShape"             options:NSKeyValueObservingOptionNew context:nil];
    [self       addObserver:self forKeyPath:@"_cardModel.lastNumber" options:NSKeyValueObservingOptionNew context:nil];
}


- (void) observeValueForKeyPath:(NSString*)keyPath
                       ofObject:(id)object
                         change:(NSDictionary*)change
                        context:(void*)context {
    NSLog(@"keypath = %@, change = %@", keyPath, change);
}


- (void) randomizedCard:(NSNotification*)noti {
    NSNumber* shape  = noti.userInfo[@"shape"];
    NSNumber* number = noti.userInfo[@"number"];
    
    NSLog(@"shape = %d, number = %d", shape.intValue, number.intValue);
    
    // The NSIndexPath class represents the path to a specific node in a tree of nested array collections. This path is known as an index path.
    // Returns an index-path object initialized with the indexes of a specific row and section in a table view.
    // row: An index number identifying a row in a UITableView object in a section identified by section.
    // section: An index number identifying a section in a UITableView object.
    NSString* imgName = [_cardModel cardImageForIndex:[NSIndexPath indexPathForRow:number.integerValue
                                                                         inSection:shape.integerValue]];
    [_cardImageView setImage:[UIImage imageNamed:imgName]];
}

     
- (IBAction)randomButton:(id)sender{
    [_cardModel randomize];
}

     
- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
     
@end
