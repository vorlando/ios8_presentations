//
//  ViewController.m
//  presentationController_sb
//
//  Created by Vincent Orlando on 4/21/15.
//  Copyright (c) 2015 Daybreak Research. All rights reserved.
//

#import "ViewController.h"
#import "PopUpViewController.h"
#import "PopoverPresentationController.h"

@interface ViewController ()
- (IBAction)clickMe:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *button;

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
  pvc.modalPresentationStyle = UIModalPresentationPopover;

  //get instance of PopoverPresentationController from presentedViewController
  UIPopoverPresentationController *popPC = pvc.popoverPresentationController;


  // set attributes
  popPC.permittedArrowDirections = UIPopoverArrowDirectionAny;

  popPC.sourceView = self.button;
  popPC.sourceRect = self.button.bounds;

  // add this to override default compact behavior and get popover on compact screens
  pvc.popoverPresentationController.delegate = self;

  // present the new controller
  [self presentViewController:pvc animated:YES completion:nil];

}

// this is required for the UIPopoverPresentationControllerDelegate
- (UIModalPresentationStyle) adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller {
  return UIModalPresentationNone;
}


@end
