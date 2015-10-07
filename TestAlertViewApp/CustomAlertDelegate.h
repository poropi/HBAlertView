//
//  CustomAlertDelegate.h
//  TestAlertViewApp
//
//  Created by 廣澤智明 on 2015/10/06.
//  Copyright © 2015年 廣澤智明. All rights reserved.
//

#ifndef CustomAlertDelegate_h
#define CustomAlertDelegate_h

@protocol CustomAlertDelegate <NSObject>
@required
-(void)clickedAtIndex:(NSInteger)buttonIndex;
@end

#endif /* CustomAlertDelegate_h */
