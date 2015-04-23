//
//  ViewToPopUpPresentationController.m
//  presentationController_sb
//
//  Created by Vincent Orlando on 4/23/15.
//  Copyright (c) 2015 Daybreak Research. All rights reserved.
//

#import "ViewToPopUpPresentationController.h"

@implementation ViewToPopUpPresentationController
-(BOOL)shouldRemovePresentersView {
  NSLog(@"Do not remove presenters View!");

  return NO;
}

-(void) presentationTransitionWillBegin {
  NSLog(@"starting the show");

}

-(void) dismissalTransitionWillBegin {
  NSLog(@"dismissal beginning");
  
}
@end
