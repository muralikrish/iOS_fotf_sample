//
//  ViewController.m
//  IosBuildPipelineProject
//
//  Created by Murali Krishna on 07/12/18.
//  Copyright © 2018 Murali Krishna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *password;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)loginTapped:(id)sender {
    if ([self doesUserHasAccessWithUserName:self.userName.text password:self.password.text]) {
        UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
        UIViewController *homeVC = [storyBoard instantiateViewControllerWithIdentifier:@"HomeViewControllerIdentifier"];
        [self presentViewController:homeVC animated:YES completion:^{
            
        }];
    }else{
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Failure!!"
                                                                       message:@"Please enter correct UserName and Password"
                                                                preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {}];
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
    }
}


- (BOOL)doesUserHasAccessWithUserName:(NSString *)aUserName password:(NSString *)aPassword {
    if ([aUserName isEqualToString:@"Admin"] && [aPassword isEqualToString:@"admin"]) {
        return YES;
    }
    return NO;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

@end
