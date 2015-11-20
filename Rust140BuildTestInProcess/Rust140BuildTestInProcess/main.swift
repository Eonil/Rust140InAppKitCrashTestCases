//
//  main.swift
//  Rust140BuildTestInProcess
//
//  Created by Hoon H. on 2015/11/19.
//  Copyright © 2015 Eonil. All rights reserved.
//

import Cocoa

let	t	=	NSTask()
t.launchPath	=	"/bin/bash"
t.arguments	=	["--login", "-c", "cd ~/; rm -rf ~/testproj1; cargo new --bin testproj1; cd testproj1; cargo clean; cargo build --verbose; open .;"]
t.launch()
t.waitUntilExit()