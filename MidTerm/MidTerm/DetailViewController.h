//
//  DetailViewController.h
//  MidTerm
//
//  Created by 박태준 on 2015. 4. 15..
//  Copyright (c) 2015년 박태준. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

