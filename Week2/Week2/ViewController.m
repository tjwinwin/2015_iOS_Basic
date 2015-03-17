//
//  ViewController.m
//  Week2
//
//  Created by Jung Kim on 3/11/15.
//  Copyright (c) 2015 NHN NEXT. All rights reserved.
//

#import "ViewController.h"
#import "NXDataModel.h"

@interface ViewController ()
{
    NXDataModel* model;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"persons" ofType:@"txt"];
    NXDataModel* myModel = [[NXDataModel alloc] initWithFilePath:filePath];
    
    NSLog(@"name[0] = %@", [myModel personNameAtIndex:0]);
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
