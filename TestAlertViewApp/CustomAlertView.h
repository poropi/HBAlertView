//
//  CustomAlertView.h
//  TestAlertViewApp
//
//  Created by 廣澤智明 on 2015/10/05.
//  Copyright © 2015年 廣澤智明. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomAlertProtocol.h"
#import "CustomAlertDelegate.h"

@interface CustomAlertView : UIAlertView< CustomAlertProtocol, UIAlertViewDelegate >

@property id <CustomAlertDelegate> alertDelegate;

@end
