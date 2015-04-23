//
//  ViewController.m
//  presentationController_sb
//
//  Created by Vincent Orlando on 4/21/15.
//  Copyright (c) 2015 Daybreak Research. All rights reserved.
//

#import "ViewController.h"
#import "PopUpViewController.h"
#import "ViewToPopUpTransitionDelegate.h"

@interface ViewController ()
- (IBAction)clickMe:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (strong, nonatomic) ViewToPopUpTransitionDelegate *td;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)clickMe:(id)sender {
  UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
  PopUpViewController *pvc = [sb instantiateViewControllerWithIdentifier:@"popOverViewController"];

  // Set the modal presentation style for the presentedViewController
  // if this is custom, then you need to set transitioningDelegate

  pvc.modalPresentationStyle = UIModalPresentationCustom;

  self.td  = [[ViewToPopUpTransitionDelegate alloc]init];
  pvc.transitioningDelegate  = self.td;

  // present the new controller
  
  pvc.presentingController = self;
  [self presentViewController:pvc animated:YES completion:nil];

}

// this is required for the UIPopoverPresentationControllerDelegate
- (UIModalPresentationStyle) adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller {
  return UIModalPresentationNone;
}


@end
