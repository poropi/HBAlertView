//
//  CustomAlertViewUtil.m
//
//  Created by システム ２G on 2015/10/06.
//  Copyright © 2015年 システム ２G. All rights reserved.
//

#import "HBAlertViewUtil.h"
#import "HBAlertController.h"
#import "HBAlertView.h"

@implementation HBAlertViewUtil

+(HBAlertDialog)getAlertView:(UIViewController *)viewController {
    if ([UIAlertController class]) {
        return [[HBAlertController alloc] init:viewController];
    } else {
        return [[HBAlertView alloc] init:viewController];
    }
}

@end
