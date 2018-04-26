//
//  ViewController.m
//  DeviceInfo
//
//  Created by Rambo on 2018/4/26.
//  Copyright © 2018年 HB. All rights reserved.
//

#import "ViewController.h"
#import "UIDevice+HBCategory.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *deviceInfoLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *machineModelName = [NSString stringWithFormat:@"设备型号：%@",[UIDevice currentDevice].machineModelName];
    
    NSString *appVersion = [NSString stringWithFormat:@"APPVersion：%@", [UIDevice appVersion]];
    
    NSString *buileVersion = [NSString stringWithFormat:@"BuileVersion：%@", [UIDevice appBundleVersion]];
    
    NSString *bundleIdentifier = [NSString stringWithFormat:@"BundleIdentifier：%@",[UIDevice appBundleIdentifier]];
    
    self.deviceInfoLabel.text = [NSString stringWithFormat:@"%@\n%@\n%@\n%@",machineModelName, appVersion, buileVersion,bundleIdentifier];
    
    

}


@end
