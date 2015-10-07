//
//  CustomAlertController.m
//
//  Created by 廣澤智明 on 2015/10/05.
//  Copyright © 2015年 廣澤智明. All rights reserved.
//

#import "HBAlertController.h"

@interface HBAlertController ()

@end

@implementation HBAlertController

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
    self = [HBAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleAlert];
    self.buttonId = 0;
    self.viewController = viewController;
    self.titleArray = [NSMutableArray array];
    
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
    }
}

-(void)addButtonWithTitle:(NSString *)title {
    [super addAction:[UIAlertAction actionWithTitle:title style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        if (self.alertDelegate) {
            [[self alertDelegate] alertView:self buttonAtIndex:[self.titleArray indexOfObject:action.title]];
        }
    }]];
    [self.titleArray addObject:title];
}

-(void)setTag:(NSInteger)tag {
    self.alertTag = tag;
}

-(NSInteger)getTag {
    return self.alertTag;
}

-(void)show {
    [self.viewController presentViewController:self animated:YES completion:nil];
}

@end
