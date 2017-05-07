//
//  ViewController.m
//  MultiTraget
//
//  Created by rdthakar on 07/05/17.
//  Copyright © 2017 Goldenmace IT Solutions. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

extern int NAV_COLOR_RED ;extern int NAV_COLOR_GREEN ;extern int NAV_COLOR_BLUE ;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //target wise theme color set
    self.view.backgroundColor = [UIColor colorWithRed:NAV_COLOR_RED/255.0f green:NAV_COLOR_GREEN/255.0f blue:NAV_COLOR_BLUE/255.0f alpha:1];
    
    //timer set and redirect next view
     [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(nextView) userInfo:nil repeats:NO];
    
    for (NSString *fontFamilyName in [UIFont familyNames]) {
        for (NSString *fontName in [UIFont fontNamesForFamilyName:fontFamilyName]) {
            NSLog(@"Family: %@    Font: %@", fontFamilyName, fontName);
        }
    }
}

//redirect second view
-(void)nextView{
    UIStoryboard *storyObj=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    SecondViewController *vc=[storyObj instantiateViewControllerWithIdentifier:@"SecondViewController"];
    [self.navigationController pushViewController:vc animated:YES];

}

@end
