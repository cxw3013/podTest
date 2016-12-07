//
//  CWViewController.m
//  CWPayModule
//
//  Created by cxw on 12/06/2016.
//  Copyright (c) 2016 cxw. All rights reserved.
//

#import "CWViewController.h"
#import "MCHttpHelper.h"
@interface CWViewController ()


/**
 *
 */
@property (strong, nonatomic) MCHttpHelper *httpHelper;


@end

@implementation CWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self testHttpHelper];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)testHttpHelper {
    _httpHelper = [[MCHttpHelper alloc] init];
    [_httpHelper getWithUrl:@"https://api.douban.com/v2/book/search?q=%E5%93%88%E5%88%A9%E6%B3%A2%E7%89%B9&count=20" withCompletion:^(id responseObject) {
        NSLog(@"good");
    } failed:^(NSError *error) {
        NSLog(@"error");
    }];
}

@end
