//
//  AppDelegate.m
//  Random
//
//  Created by Valera Antonov on 3/27/13.
//  Copyright (c) 2013 Valera Antonov. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)seed:(id)sender {
    srandom((unsigned)time(NULL));
}

- (IBAction)generate:(id)sender {
    int n;
    if([maxValue integerValue]) {
        n = (int)((random() % [maxValue integerValue]));
    }
    else {
        n = (int)((random() % 100) + 1);
    }
    [display setIntValue:n];
}
@end
