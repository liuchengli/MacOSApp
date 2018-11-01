//
//  AppDelegate.swift
//  MacOSApp
//
//  Created by ChengliMac on 2018/11/1.
//  Copyright © 2018年 刘成利. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        let w : CGFloat = NSScreen.main?.frame.size.width ?? 0/2
        let h : CGFloat = NSScreen.main?.frame.size.height ?? 0/2
        
        var window = NSApplication.shared.keyWindow
        
        if window == nil {
            
            window = NSWindow.init(contentRect: NSRect.init(x: 0, y: 0, width: w, height: h), styleMask: NSWindow.StyleMask(rawValue: NSWindow.StyleMask.titled.rawValue | NSWindow.StyleMask.closable.rawValue | NSWindow.StyleMask.miniaturizable.rawValue | NSWindow.StyleMask.resizable.rawValue), backing: NSWindow.BackingStoreType.buffered, defer: true)
        }
        
        window?.title = "CICC主视窗"
        window?.makeKeyAndOrderFront(self)
        window?.center()
        window?.contentViewController = HomeViewController()
        
    }

    // window关闭，点dock 回复
//    func applicationShouldHandleReopen(_ sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool {
//
//        if !flag {
//
//            NSApp.activate(ignoringOtherApps: false)
//            NSApplication.shared.keyWindow?.makeKeyAndOrderFront(self)
//        }
//
//        return true
//    }
    
   
    // 最后一个window关闭时应用自动退出
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        
        return true
    }
    
   
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

