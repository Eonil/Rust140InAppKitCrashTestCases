
Rust 1.4.0 installation with `multirust` runs fine on command line,
but crashes with `signal 11` if it was being executed by `NSTask` in Apple AppKit.

I wrote some test cases to reproduce them.
Current state is;

1. A command-line program with `NSTask`. This works fine.
2. An AppKit app with `NSTask`. This always crashes.
3. An AppKit appjust only links to AppKit. No actuall AppKit code in app.
   Also crashes.
4. AppKit app wrote in Objective-C. Also crashes.
5. AppKit app that runs `cargo` with BSD level `pty` instead of `NSTask`. Works fine.

I am still don't know which causes this issue.

- This issue equally occurs Rust installation by building from 
  source using Homebrew.
- This issue does not occur with Rust 1.2.0 `cargo` and `rustc`. They worked fine.
