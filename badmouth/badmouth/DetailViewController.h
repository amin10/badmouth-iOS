//
//  DetailViewController.h
//  badmouth
//
//  Created by Mohamed Kane on 10/4/14.
//  Copyright (c) 2014 Mohamed Kane. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

