//
//  SecondViewController.h
//  MultiTraget
//
//  Created by rdthakar on 07/05/17.
//  Copyright © 2017 Goldenmace IT Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UILabel *lbladdress;

@property (weak, nonatomic) IBOutlet UIView *vwnavigation;

@property (weak, nonatomic) IBOutlet UIButton *btnback;

- (IBAction)btnBack_Clicked:(id)sender;

@end
