//
//  CustomAlertView.m
//  TestAlertViewApp
//
//  Created by 廣澤智明 on 2015/10/05.
//  Copyright © 2015年 廣澤智明. All rights reserved.
//

#import "CustomAlertView.h"

@implementation CustomAlertView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(id)init:(UIViewController *)viewController {
    self = [[CustomAlertView alloc] init];
    return self;
}

-(void)setTitle:(NSString *)title {
    [self setTitle:title];
}

-(void)setMessage:(NSString *)message {
    [self setMessage:message];
}

-(void)setDelegate:(id)delegate {
    [self setAlertDelegate:delegate];
}

-(void)addButtonWithTitle:(NSString *)title {
    [self addButtonWithTitle:title];
}

-(void)show {
    [self show];
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    [[self alertDelegate] clickedAtIndex:buttonIndex];
}

@end
