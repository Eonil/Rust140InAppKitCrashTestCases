//
//  AppDelegate.swift
//  Rust140BuildTestInProcessOfAppKit
//
//  Created by Hoon H. on 2015/11/20.
//  Copyright © 2015 Eonil. All rights reserved.
//

import Cocoa


@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

	@IBOutlet weak var window: NSWindow!

	func applicationDidFinishLaunching(aNotification: NSNotification) {
		let	t	=	NSTask()
		t.launchPath	=	"/bin/bash"
		t.arguments	=	["--login", "-c", "cd ~/; rm -rf ~/testproj1; cargo new --bin testproj1; cd testproj1; cargo clean; cargo build --verbose;"]
		t.launch()
		t.waitUntilExit()
	}

	func applicationWillTerminate(aNotification: NSNotification) {
		// Insert code here to tear down your application
	}


}


