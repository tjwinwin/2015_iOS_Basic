//
//  ViewController.h
//  Week3
//
//  Created by 박태준 on 2015. 3. 18..
//  Copyright (c) 2015년 박태준. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
- (IBAction)randomChoice:(UIButton *)sender;

@end

