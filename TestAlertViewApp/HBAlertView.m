//
//  CustomAlertView.m
//
//  Created by 廣澤智明 on 2015/10/05.
//  Copyright © 2015年 廣澤智明. All rights reserved.
//

#import "HBAlertView.h"

@implementation HBAlertView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(id)init:(UIViewController *)viewController {
    self = [super init];
    return self;
}

-(void)setTitle:(NSString *)title {
    [super setTitle:title];
}

-(void)setMessage:(NSString *)message {
    [super setMessage:message];
}

-(void)setDelegate:(id)delegate {
    if (delegate) {
        [self setAlertDelegate:delegate];
        super.delegate = self;
    }
}

-(void)addButtonWithTitle:(NSString *)title {
    [super addButtonWithTitle:title];
}

-(void)setTag:(NSInteger)tag {
    self.alertTag = tag;
}

-(NSInteger)getTag {
    return self.alertTag;
}

-(void)show {
    [super show];
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    [[self alertDelegate] alertView:self buttonAtIndex:buttonIndex];
}

@end
