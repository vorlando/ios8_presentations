//
//  PopUpViewController.m
//  presentationController_sb
//
//  Created by Vincent Orlando on 4/21/15.
//  Copyright (c) 2015 Daybreak Research. All rights reserved.
//

#import "PopUpViewController.h"

@interface PopUpViewController ()
- (IBAction)bye:(id)sender;

@end

@implementation PopUpViewController

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

- (IBAction)bye:(id)sender {
  [self dismissViewControllerAnimated:YES completion:nil];
}
@end
