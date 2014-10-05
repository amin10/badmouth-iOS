//
//  badMouthViewController.m
//  badmouth
//
//  Created by Mohamed Kane on 10/4/14.
//  Copyright (c) 2014 Mohamed Kane. All rights reserved.
//

#import "badMouthViewController.h"
#import <Parse/Parse.h>

@interface badMouthViewController ()
@property (weak, nonatomic) IBOutlet UILabel *badMouthLabel;
@property (weak, nonatomic) IBOutlet UILabel *instructionLabel;
@property (weak, nonatomic) IBOutlet UILabel *targetLabel;
@property (weak, nonatomic) IBOutlet UITextView *badmouth;
@property (weak, nonatomic) IBOutlet UIButton *submitButton;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *swipeLeft;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *swipeRight;
@property (weak, nonatomic) IBOutlet UITextField *targetCreator;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property(strong,nonatomic) NSMutableArray *options;
@end

@implementation badMouthViewController
- (IBAction)handleSwipeLeft:(id)sender {
    [self.targetLabel setHidden:TRUE];
    [self.targetCreator setHidden:false];
}
- (IBAction)nextTarget:(id)sender {
    int op = arc4random()%3;
    NSString *text = self.options[op];
    self.targetLabel.text = text;
}
- (IBAction)submit:(id)sender {
    PFObject *target = [PFObject objectWithClassName:@"Target"];
    [target setValue:self.targetLabel.text forKey:@"name"];
    PFObject *story = [PFObject objectWithClassName:@"Badmouth"];
    [story setValue:self.badmouth.text forKey:@"text"];
    PFRelation *badmouths = [target objectForKey:@"badmouths"];
    [badmouths addObject:story];
    [target saveInBackground];
    [story saveInBackground];
    badMouthViewController *newViewController = [[badMouthViewController alloc] init];
    [self presentViewController:newViewController animated:YES completion:nil];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    [self.targetCreator setHidden:TRUE];
    self.options = [[NSMutableArray alloc]init];
    [self.options addObject:@"Google"];
    [self.options addObject:@"Facebook"];
    [self.options addObject:@"Obama"];
    [self.options addObject:@"Uber"];
    NSLog([self.options description]);
    int op = arc4random()%3;
    NSString *text = self.options[op];
    NSLog(text);
    self.targetLabel.text=text;
}
- (void)viewDidLoad {
    self.swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    self.swipeRight.direction = UISwipeGestureRecognizerDirectionUp;
    
    self.badmouth.delegate = self;
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)handleRight:(id)sender {
   [self.targetLabel setHidden:TRUE];
    NSLog(@"Right");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    [textField resignFirstResponder];
    NSLog(@"Returned");
    return YES;
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSLog(@"rjf9jffjr");
    return YES;
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
