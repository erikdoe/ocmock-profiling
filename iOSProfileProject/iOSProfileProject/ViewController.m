//
//  ViewController.m
//  iOSProfileProject
//
//  Created by Erik Doernenburg on 30/09/15.
//  Copyright © 2015 Erik Doernenburg. All rights reserved.
//

#import <OCMock/OCMock.h>
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    for(int i = 0; i < 2000; i++)
    {
        id mock = OCMClassMock([UITableView class]);
        OCMStub([mock reloadData]);
        [mock reloadData];
    }
    
    [label setText:@"Done."];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
