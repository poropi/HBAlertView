//
//  CustomAlertViewUtil.h
//
//  Created by システム ２G on 2015/10/06.
//  Copyright © 2015年 システム ２G. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HBAlertProtocol.h"
#import "HBAlertDelegate.h"
#import <UIKit/UIKit.h>

#define HBAlertDialog id<HBAlertProtocol>

@interface HBAlertViewUtil : NSObject

+(HBAlertDialog)getAlertView:(UIViewController *)viewController;

@end
