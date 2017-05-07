//
//  TUIColor.h
//  MyRide
//
//  Created by Goldenmace on 31/01/17.
//  Copyright © 2017 Goldenmace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TUIColor : UIColor

+ (UIColor *)colorWithHexString:(NSString *)hexString;
+ (NSString *)hexValuesFromUIColor:(UIColor *)color;

@end
