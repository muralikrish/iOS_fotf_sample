//
//  HomeViewController.m
//  IosBuildPipelineProject
//
//  Created by Murali Krishna on 12/12/18.
//  Copyright © 2018 Murali Krishna. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()
@property (weak, nonatomic) IBOutlet UITextField *valueA;
@property (weak, nonatomic) IBOutlet UITextField *valueB;
@property (weak, nonatomic) IBOutlet UILabel *resultValue;

@end

@implementation HomeViewController
- (IBAction)additionClicked:(id)sender {
    self.resultValue.text = [NSString stringWithFormat:@"Result Value is :%d",[self addValues:[self.valueA.text intValue] :[self.valueB.text intValue]]];
}
- (IBAction)SubtractionCliked:(id)sender {
    self.resultValue.text = [NSString stringWithFormat:@"Result Value is :%d",[self subtractValues:[self.valueA.text intValue] :[self.valueB.text intValue]]];

}
- (IBAction)multiplicationClicked:(id)sender {
    self.resultValue.text = [NSString stringWithFormat:@"Result Value is :%d",[self multiplyValues:[self.valueA.text intValue] :[self.valueB.text intValue]]];

}


- (int)addValues:(int)valueA : (int)valueB {
    
    return valueA+valueB;
}

- (int)subtractValues:(int)valueA : (int)valueB {
    
    return valueA-valueB;
}

- (int)multiplyValues:(int)valueA : (int)valueB {
    
    return valueA*valueB;
}
- (IBAction)logoutTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
