//
//  FirstViewController.m
//  Week3View
//
//  Created by Jung Kim on 3/16/15.
//  Copyright (c) 2015 NHN NEXT. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabelText;

@end

@implementation FirstViewController
- (IBAction)onClick:(id)sender {
     self.titleLabelText.text = @"ViewDidLoad";   
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
