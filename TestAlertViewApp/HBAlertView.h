//
//  CustomAlertView.h
//
//  Created by 廣澤智明 on 2015/10/05.
//  Copyright © 2015年 廣澤智明. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HBAlertProtocol.h"
#import "HBAlertDelegate.h"

@interface HBAlertView : UIAlertView< HBAlertProtocol, UIAlertViewDelegate >

@property (nonatomic, unsafe_unretained) id <HBAlertDelegate> alertDelegate;
@property (nonatomic) NSInteger alertTag;

@end
