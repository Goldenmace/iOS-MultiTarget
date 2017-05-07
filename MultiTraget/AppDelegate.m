//
//  AppDelegate.m
//  MultiTraget
//
//  Created by rdthakar on 07/05/17.
//  Copyright © 2017 Goldenmace IT Solutions. All rights reserved.
//

#import "AppDelegate.h"
#import "TConfig.h"

int NAV_COLOR_RED; int NAV_COLOR_GREEN; int NAV_COLOR_BLUE;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //TODO : add target wise theme contents like color, texts etc

    NSString* color=[[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleName"];
    NSLog(@"%@",color);
    if ([color isEqualToString:TARGETONE]){
        NAV_COLOR_RED=24; NAV_COLOR_GREEN=88; NAV_COLOR_BLUE=149;
    }
    else if([color isEqualToString:TARGETTWO]){
        NAV_COLOR_RED=64; NAV_COLOR_GREEN=0; NAV_COLOR_BLUE=128;
    }
    else if([color isEqualToString:TARGETTHREE]){
        NAV_COLOR_RED=255; NAV_COLOR_GREEN=24; NAV_COLOR_BLUE=167;
    }
    
    return YES;
}

@end
