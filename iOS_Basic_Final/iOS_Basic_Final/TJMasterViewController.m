//
//  ViewController.m
//  iOS_Basic_Final
//
//  Created by 박태준 on 2015. 6. 3..
//  Copyright (c) 2015년 박태준. All rights reserved.
//

#import "TJMasterViewController.h"

@interface ViewController ()

@property NSMutableArray *objects;

@end

@implementation ViewController

NSInteger feedingCount = 0;
NSInteger pooCount = 0;
NSInteger sleepCount = 0;
NSInteger medicineCount = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _masterTableView.delegate = self;
    _masterTableView.dataSource = self;
    _actionArr = [[NSMutableArray alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

// 초기 Section 개수 설정
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

// 행 개수 설정
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_actionArr count];
}

// 특정 셀의 데이터를 요청. return은 특정 cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //보이지 않는 특정 cell을 찾는다.  식별 키는 dequeueReusableCellWithIdentifier
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"testcell"];
    
    //위의 cell이 없다면 새로 생성한다.
    if( cell == nil )
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"testcell"];
    }
    
    NSUInteger row = [indexPath row];
    NSUInteger count = [_actionArr count]; // here listData is your data source
    cell.textLabel.text = [_actionArr objectAtIndex:(count-row-1)];
    
    return cell;
    
}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    NSString *segueIdentifier = nil;
//    
//    switch(indexPath.row) {
//        case 0:
//            segueIdentifier = @"YourSegueIdentifier";
//            break;
//        case 1:
//            segueIdentifier = @"ADifferentSegueIdentifier";
//            break;
//    }
//    
//    if (segueIdentifier != nil) {
//        [self performSegueWithIdentifier:segueIdentifier sender:self];
//    }
//}

#pragma mark - Main Action Buttons

- (IBAction)clasifiedMainButtons:(id)sender {
    
    NSDate* now = [NSDate date];
    NSDateFormatter* hourAndMin = [[NSDateFormatter alloc]init];
    [hourAndMin setDateFormat:@"HH:mm"];
    NSString* actionTime = [hourAndMin stringFromDate:now];
    
    NSMutableString* textForLabel = [[NSMutableString alloc]initWithCapacity:10];
    
    if (sender == _feedingButton) {
        _feedingButton.tag = 0;
        [textForLabel appendFormat:@"[ 수 유 ]   %ld회   %@", ++feedingCount, actionTime];
    }
    else if (sender == _pooButton) {
        _pooButton.tag = 1;
        [textForLabel appendFormat:@"[ 배 변 ]   %ld회   %@", ++pooCount, actionTime];
    }
    else if (sender == _sleepButton) {
        _sleepButton.tag = 2;
        [textForLabel appendFormat:@"[ 수 면 ]   %ld회   %@", ++sleepCount, actionTime];
    }
    else if (sender == _medicineButton) {
        _medicineButton.tag = 3;
        [textForLabel appendFormat:@"[ 투 약 ]   %ld회   %@", ++medicineCount, actionTime];
    }
    
    [_actionArr addObject:textForLabel];
    [_masterTableView reloadData];

    NSLog(@"%@", textForLabel);
    
}

//- (void)performSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
//    if ([[_actionArr objectAtIndex:_totalArr.count -1 -indexPath.row] objectForKey:@"feeding"] != nil) {
//        [self performSegueWithIdentifier:@"FeedingSegue" sender:self];
//    }
//    else if ([[_actionArr objectAtIndex:_totalArr.count -1 -indexPath.row] objectForKey:@"poo"] != nil) {
//        [self performSegueWithIdentifier:@"PooSegue" sender:self];
//    }
//    else if ([[_actionArr objectAtIndex:_totalArr.count -1 -indexPath.row] objectForKey:@"sleeping"] != nil) {
//        [self performSegueWithIdentifier:@"SleepSegue" sender:self];
//    }
//    else if ([[_actionArr objectAtIndex:_totalArr.count -1 -indexPath.row] objectForKey:@"medicine"] != nil) {
//        [self performSegueWithIdentifier:@"MedicineSegue" sender:self];
//    }
//}



@end
