//
//  CustomAlertController.m
//  TestAlertViewApp
//
//  Created by 廣澤智明 on 2015/10/05.
//  Copyright © 2015年 廣澤智明. All rights reserved.
//

#import "CustomAlertController.h"

@interface CustomAlertController ()

@end

@implementation CustomAlertController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(id)init:(UIViewController *)viewController {
    self = [CustomAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleAlert];
    self.buttonId = 0;
    self.viewController = viewController;
    
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
    [self addAction:[UIAlertAction actionWithTitle:title style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [[self alertDelegate] clickedAtIndex:self.buttonId];
    }]];
    self.buttonId++;
}

-(void)show {
    [self.viewController presentViewController:self animated:YES completion:nil];
}

@end
