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

- (BOOL)applicationShouldHandleReopen:(NSApplication *)app hasVisibleWindows:(BOOL)flag {
    if (flag == NO)
        [_window makeKeyAndOrderFront:self];
    return YES;
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

- (IBAction)showAbout:(id)sender {
    NSDictionary *options = @{@"ApplicationName":@"Random.app", @"Version":@"1.0", @"ApplicationVersion":@"Random1.0"};
}

@end
