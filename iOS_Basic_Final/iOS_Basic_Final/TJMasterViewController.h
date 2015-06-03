//
//  ViewController.h
//  iOS_Basic_Final
//
//  Created by 박태준 on 2015. 6. 3..
//  Copyright (c) 2015년 박태준. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *masterTableView;

@property (strong, nonatomic) IBOutlet UILabel *feedingLabel;
@property (strong, nonatomic) IBOutlet UILabel *pooLabel;
@property (strong, nonatomic) IBOutlet UILabel *sleepLabel;
@property (strong, nonatomic) IBOutlet UILabel *medicineLabel;

@property (strong, nonatomic) IBOutlet UIButton *feedingButton;
@property (strong, nonatomic) IBOutlet UIButton *pooButton;
@property (strong, nonatomic) IBOutlet UIButton *sleepButton;
@property (strong, nonatomic) IBOutlet UIButton *medicineButton;

@property (strong, nonatomic) NSMutableArray* actionArr;

- (IBAction)clasifiedMainButtons:(id)sender;

@end

