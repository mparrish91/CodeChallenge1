//
//  ViewController.m
//  CodeChallenge1
//
//  Created by malcolm on 11/1/14.
//  Copyright (c) 2014 parry. All rights reserved.
//

#import "ViewController.h"
#import "WebViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *numberTextFieldOne;
@property (weak, nonatomic) IBOutlet UITextField *numberTextFieldTwo;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *webButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.webButton setEnabled:NO];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onButtonPressedCalculate:(id)sender {
    int numberOne = [self.numberTextFieldOne.text intValue];
    int numberTwo = [self.numberTextFieldTwo.text intValue];

    int answer = numberOne * numberTwo;
    self.title = [NSString stringWithFormat:@"%d",answer];
    
    
    if (answer % 5 == 0) {
        [self.webButton setEnabled:YES];
    }
    [sender resignFirstResponder];
}

- (IBAction)onBarButtonPressedNavigate:(id)sender {
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    WebViewController *destinationViewController = segue.destinationViewController;
    destinationViewController.answer = self.title;
}

@end
