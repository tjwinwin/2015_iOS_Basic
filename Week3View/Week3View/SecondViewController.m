//
//  SecondViewController.m
//  Week3View
//
//  Created by Jung Kim on 3/16/15.
//  Copyright (c) 2015 NHN NEXT. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (nonatomic, retain) NSArray *personData;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _personData = @[
  @{@"name":@"이진우",@"number":@131056},
  @{@"name":@"김창규",@"number":@131020},
  @{@"name":@"박태준",@"number":@141037},
  @{@"name":@"심보희",@"number":@141051},
  @{@"name":@"고형진",@"number":@141004},
  @{@"name":@"조영대",@"number":@141083},
  @{@"name":@"조현호",@"number":@141085},
  @{@"name":@"신윤서",@"number":@141049} ];
}
- (IBAction)findNumberByName:(id)sender {
    for (NSDictionary *person  in _personData) {
        if ([[person objectForKey:@"name"] isEqualToString:_nameTextField.text]) {
            //
            _resultLabel.text = [NSString stringWithFormat:@"결과 : %@", [person objectForKey:@"number"]];
            return;
        }
    }
    _resultLabel.text = @"결과 없음";
}

- (IBAction)showAllNames:(id)sender {
    //여기를 완성하세요
    NSDictionary *allName = [[NSDictionary alloc]init];
    [allName objectForKey:@"name"];
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"전체이름"
                                                                   message:[NSString stringWithFormat:@"%@", allName]
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
    return;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
