//
//  GorjetonaAppDelegate.m
//  Gorjetona
//
//  Created by Matheus Brum on 16/10/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "GorjetonaAppDelegate.h"
#import "GorjetonaViewController.h"

@implementation GorjetonaAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
