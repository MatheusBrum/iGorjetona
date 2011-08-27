//
//  GorjetonaAppDelegate.h
//  Gorjetona
//
//  Created by Matheus Brum on 16/10/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GorjetonaViewController;

@interface GorjetonaAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    GorjetonaViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet GorjetonaViewController *viewController;

@end

