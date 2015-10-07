//
//  CustomAlertProtocol.h
//  TestAlertViewApp
//
//  Created by 廣澤智明 on 2015/10/05.
//  Copyright © 2015年 廣澤智明. All rights reserved.
//

#ifndef CustomAlertProtocol_h
#define CustomAlertProtocol_h

#import <Foundation/Foundation.h>

@protocol CustomAlertProtocol <NSObject>
@required
-(id)init:(UIViewController *)viewController;
-(void)setTitle:(NSString *)title;
-(void)setMessage:(NSString *)message;
-(void)setDelegate:(id)delegate;
-(void)addButtonWithTitle:(NSString *)title;
-(void)show;
@end

#endif /* CustomAlertProtocol_h */
