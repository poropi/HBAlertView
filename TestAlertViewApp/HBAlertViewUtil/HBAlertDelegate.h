//
//  HBAlertDelegate.h
//
//  Created by 廣澤智明 on 2015/10/06.
//  Copyright © 2015年 廣澤智明. All rights reserved.
//

#import "HBAlertProtocol.h"

@protocol HBAlertDelegate <NSObject>
@required
-(void)alertView:(id<HBAlertProtocol>)alertView buttonAtIndex:(NSInteger)buttonIndex;
@end
