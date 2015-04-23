//
//  ViewToPopUpTransitionDelegate.h
//  presentationController_sb
//
//  Created by Vincent Orlando on 4/22/15.
//  Copyright (c) 2015 Daybreak Research. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ViewToPopUpTransitionDelegate : NSObject <UIViewControllerTransitioningDelegate>
@property (nonatomic) BOOL isPresenting;
@end
