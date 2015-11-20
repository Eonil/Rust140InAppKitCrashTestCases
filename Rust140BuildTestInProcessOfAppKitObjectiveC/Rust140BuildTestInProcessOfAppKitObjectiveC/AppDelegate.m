//
//  AppDelegate.m
//  Rust140BuildTestInProcessOfAppKitObjectiveC
//
//  Created by Hoon H. on 2015/11/20.
//  Copyright © 2015 Eonil. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
//	let	t	=	NSTask()
//	t.launchPath	=	"/bin/bash"
//	t.arguments	=	["--login", "-c", "cd ~/; rm -rf ~/testproj1; cargo new --bin testproj1; cd testproj1; cargo clean; cargo build;"]
//	t.launch()
//	t.waitUntilExit()

	NSTask*	t	=	[[NSTask alloc] init];
	[t setLaunchPath:@"/bin/bash"];
	[t setArguments:@[@"--login", @"-c", @"cd ~/; rm -rf ~/testproj1; cargo new --bin testproj1; cd testproj1; cargo clean; cargo build --verbose; open .;"]];
	[t launch];
	[t waitUntilExit];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
	// Insert code here to tear down your application
}

@end
