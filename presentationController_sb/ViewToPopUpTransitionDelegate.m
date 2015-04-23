//
//  ViewToPopUpTransitionDelegate.m
//  presentationController_sb
//`
//  Created by Vincent Orlando on 4/22/15.
//  Copyright (c) 2015 Daybreak Research. All rights reserved.
//

#import "ViewToPopUpTransitionDelegate.h"
#import "ViewToPopUpTransitionDelegate+AnimatedTransitioning.h"

#import "ViewToPopUpPresentationController.h"

@interface ViewToPopUpTransitionDelegate ()
@end


@implementation ViewToPopUpTransitionDelegate

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
  NSLog(@"Passing along the presenter");
  self.isPresenting = YES;
  return self;

};

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
  NSLog(@"Passing along the xxxpresenter");
  self.isPresenting = NO;
  return self;

};

- (UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(UIViewController *)presenting sourceViewController:(UIViewController *)source {

  NSLog(@"initing the presentation controller");
  return [[ViewToPopUpPresentationController alloc]initWithPresentedViewController:presented presentingViewController:presenting];
};

@end
