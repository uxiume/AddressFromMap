//
//  ViewController.m
//  AddressFromMap
//
//  Created by uxiu.me on 2018/7/18.
//  Copyright © 2018年 uxiu.me. All rights reserved.
//

#import "ViewController.h"
#import "AddressFromMapViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *addressName;
@property (weak, nonatomic) IBOutlet UILabel *aera;
@property (weak, nonatomic) IBOutlet UILabel *address;
@property (weak, nonatomic) IBOutlet UILabel *coordinate;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"获取地址";
}

- (IBAction)appearMap:(id)sender {
    
#warning 需要先使用cocoapods pod install 才能运行
    
    AddressFromMapViewController *vc = [[AddressFromMapViewController alloc] init];
    vc.selectedEvent = ^(CLLocationCoordinate2D coordinate, NSString *addressName, NSString *province, NSString *city, NSString *distract, NSString *address) {
        //DLog(@"输出🍀 %@%@%@%@",province,city,distract,address);
        //DLog(@"输出🍀 %@",address);
        self.addressName.text = addressName;
        self.aera.text = [NSString stringWithFormat:@"%@ | %@ | %@",province,city,distract];
        self.address.text = address;
        self.coordinate.text = [NSString stringWithFormat:@"%f\n%f",coordinate.latitude,coordinate.longitude];
    };
    [self.navigationController pushViewController:vc animated:YES];
    
}


@end
