//
//  SecondViewController.m
//  MultiTraget
//
//  Created by rdthakar on 07/05/17.
//  Copyright © 2017 Goldenmace IT Solutions. All rights reserved.
//

#import "SecondViewController.h"
#import "TConfig.h"

extern int NAV_COLOR_RED ;extern int NAV_COLOR_GREEN ;extern int NAV_COLOR_BLUE ;

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // target app wise title set
    NSString* color=[[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleName"];
    if ([color isEqualToString:TARGETONE]){
        self.lblTitle.text = TARGETONE;
        self.lblTitle.font = [UIFont fontWithName:FONTROBOTO size:TEXTSIZE15];
        self.lbladdress.font = [UIFont fontWithName:FONTROBOTO size:TEXTSIZE15];
        self.btnback.titleLabel.font = [UIFont fontWithName:FONTROBOTO size:TEXTSIZE15];
        
    }
    else if([color isEqualToString:TARGETTWO]){
         self.lblTitle.text = TARGETTWO;
        self.lblTitle.font = [UIFont fontWithName:FONTOPENSANS size:TEXTSIZE15];
        self.lbladdress.font = [UIFont fontWithName:FONTOPENSANS size:TEXTSIZE15];
        self.btnback.titleLabel.font = [UIFont fontWithName:FONTROBOTO size:TEXTSIZE15];
    }
    else if([color isEqualToString:TARGETTHREE]){
        self.lblTitle.text = TARGETTHREE;
        self.lblTitle.font = [UIFont fontWithName:FONTHELVETICE size:TEXTSIZE15];
        self.lbladdress.font = [UIFont fontWithName:FONTHELVETICE size:TEXTSIZE15];
        self.btnback.titleLabel.font = [UIFont fontWithName:FONTHELVETICE size:TEXTSIZE15];
    }
    
    //target wise color set
    self.vwnavigation.backgroundColor = [UIColor colorWithRed:NAV_COLOR_RED/255.0f green:NAV_COLOR_GREEN/255.0f blue:NAV_COLOR_BLUE/255.0f alpha:1];
    [self setupObject];

}

-(void)setupObject{
    //label corner set
    self.lbladdress.layer.cornerRadius = 12.0;
}

- (IBAction)btnBack_Clicked:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];

}
@end
