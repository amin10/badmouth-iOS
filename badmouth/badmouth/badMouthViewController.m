//
//  badMouthViewController.m
//  badmouth
//
//  Created by Mohamed Kane on 10/4/14.
//  Copyright (c) 2014 Mohamed Kane. All rights reserved.
//

#import "badMouthViewController.h"

@interface badMouthViewController ()
@property (weak, nonatomic) IBOutlet UILabel *badMouthLabel;
@property (weak, nonatomic) IBOutlet UILabel *instructionLabel;
@property (weak, nonatomic) IBOutlet UILabel *targetLabel;
@property (weak, nonatomic) IBOutlet UITextView *badmouth;


@end

@implementation badMouthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
