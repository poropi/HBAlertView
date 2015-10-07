//
//  CustomAlertProtocol.h
//
//  Created by 廣澤智明 on 2015/10/05.
//  Copyright © 2015年 廣澤智明. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol HBAlertProtocol <NSObject>
@required
-(id)init:(UIViewController *)viewController;
-(void)setTitle:(NSString *)title;
-(void)setMessage:(NSString *)message;
-(void)setDelegate:(id)delegate;
-(void)addButtonWithTitle:(NSString *)title;
-(void)setTag:(NSInteger)tag;
-(NSInteger)getTag;
-(void)show;
@end
