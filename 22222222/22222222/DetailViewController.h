//
//  DetailViewController.h
//  22222222
//
//  Created by 박태준 on 2015. 6. 3..
//  Copyright (c) 2015년 박태준. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

