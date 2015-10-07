//
//  ViewController.m
//
//  Created by poropi on 2015/10/05.
//  Copyright © 2015年 poropi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

    // iOS7のUIAlertViewとiOS8で推奨されたUIAlertControllerを混在させたい場合に、
    // OSバージョンごとに自動で切り替えるようなクラスを作ってみたので、展開します。
    // 基本的な実装方法はUIAlertViewに準拠します。
    
    // 基本的な使用方法は、HBAlertViewUtilクラスを実装クラスのヘッダーファイルでimportし、
    // 以下の実装で動作します。
    HBAlertDialog alertView = [HBAlertViewUtil getAlertView:self];
    [alertView setTitle:@"テストタイトル"];
    [alertView setMessage:@"テストメッセージ"];
    [alertView addButtonWithTitle:@"cancel"];
    [alertView addButtonWithTitle:@"OK"];
    // ボタン押下時のイベントをフックしたい場合は、
    // HBAlertDelegateを実装することで可能としております。
    [alertView setDelegate:self]; // ←HBAlertDelegateを設定
    [alertView setTag:1];
    [alertView show];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// HBAlertDelegateの実装を定義
- (void)alertView:(id<HBAlertProtocol>)alertView buttonAtIndex:(NSInteger)buttonIndex {
    if ([alertView getTag] == 1) {
        switch (buttonIndex) {
            case 0: // cancel
                // cancel押下時の処理を実装
                break;
                
            case 1: // OK
                // OK押下時の処理を実装
                break;
                
            default:
                break;
        }
    }
}
@end
