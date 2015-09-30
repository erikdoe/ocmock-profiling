//
//  ViewController.m
//  OSXProfileProject
//
//  Created by Erik Doernenburg on 30/09/15.
//  Copyright © 2015 Erik Doernenburg. All rights reserved.
//

#import <OCMock/OCMock.h>
#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    for(int i = 0; i < 2000; i++)
    {
        id mock = OCMClassMock([NSTableView class]);
        OCMStub([mock reloadData]);
        [mock reloadData];
    }
    
    [textField setStringValue:@"Done."];

}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
