//
//  BNRWelcomeViewController.m
//  TestComp
//
//  Created by Hassan Kane on 7/9/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRWelcomeViewController.h"
#import "BNRViewController.h"
#import "BNRCalculatorViewController.h"

@interface BNRWelcomeViewController ()

@property (weak, nonatomic) IBOutlet UILabel *targetLabel
@end

@implementation BNRWelcomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
  
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
