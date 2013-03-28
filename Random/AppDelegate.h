//
//  AppDelegate.h
//  Random
//
//  Created by Valera Antonov on 3/27/13.
//  Copyright (c) 2013 Valera Antonov. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    IBOutlet NSTextField *display;
    IBOutlet NSTextField *maxValue;
}

@property (assign) IBOutlet NSWindow *window;

-(IBAction)generate:(id)sender;
-(IBAction)seed:(id)sender;


@end
