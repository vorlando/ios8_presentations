//
//  ViewToPopUpTransitionDelegate+AnimatedTransitioning.m
//  presentationController_sb
//
//  Created by Vincent Orlando on 4/22/15.
//  Copyright (c) 2015 Daybreak Research. All rights reserved.
//

#import "ViewToPopUpTransitionDelegate+AnimatedTransitioning.h"

@implementation ViewToPopUpTransitionDelegate (AnimatedTransitioning)
// This is used for percent driven interactive transitions, as well as for container controllers that have companion animations that might need to
// synchronize with the main animation.
- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext{
  return 0.2f;
};
// This method can only  be a nop if the transition is interactive and not a percentDriven interactive transition.
- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext{

  NSLog(@"Running the animating transition");


  UIViewController *fromVC;
  UIViewController *toVC;

  if (self.isPresenting) {
    fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    toVC   = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
  } else {
    fromVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    toVC   = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
  }

  UIView *toView   = [toVC   view];

  UIView *containerView = [transitionContext containerView];

  [containerView addSubview:toView];

  CGRect initialFrame;
  CGRect finalFrame;

  if (self.isPresenting) {

    finalFrame = [transitionContext finalFrameForViewController:toVC];
    initialFrame = finalFrame;
    initialFrame.origin.y = initialFrame.size.height;

    [toView setFrame:initialFrame];

    UIVisualEffect *blurEffect;
    blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];

    UIVisualEffectView *visualEffectView;
    visualEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];

    visualEffectView.frame = toView.bounds;
    [toView insertSubview:visualEffectView atIndex:0];

  } else {

    initialFrame = [transitionContext finalFrameForViewController:toVC];
    finalFrame   = initialFrame;
    finalFrame.origin.y = finalFrame.size.height;

  }

  [UIView animateWithDuration:[self transitionDuration:transitionContext]
                        delay:0
                      options:UIViewAnimationOptionAllowUserInteraction | UIViewAnimationOptionBeginFromCurrentState
                   animations:^{
                     [toView setFrame:finalFrame];
                   }
                   completion:^(BOOL finished){
                     [transitionContext completeTransition:YES];
                   }
   ];
};

@end
