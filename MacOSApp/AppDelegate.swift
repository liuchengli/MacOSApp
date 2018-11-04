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

    var window :  NSWindow!
    // MARK:App 代理方法
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        let w : CGFloat = NSScreen.main?.frame.size.width ?? 0/2
        let h : CGFloat = NSScreen.main?.frame.size.height ?? 0/2
        
        let style : NSWindow.StyleMask = [.titled,
                                          .closable,
                                          .resizable,
                                          .miniaturizable,
                                          ]
        window = NSApplication.shared.keyWindow
        
        if window == nil {
            
            window = NSWindow.init(contentRect: NSRect.init(x: 0, y: 0, width: w, height: h), styleMask: style, backing: NSWindow.BackingStoreType.buffered, defer: true)
        }
        
        window?.title = "CICC主视窗"
        window?.makeKeyAndOrderFront(self)
        window?.center()
        let VC = HomeViewController()
        window?.contentViewController = VC
        window.contentView            = VC.view
        
        
        
    
        
        // 若有模态窗口
        NotificationCenter.default.addObserver(self, selector: #selector(windowClose(window: )), name: NSWindow.willCloseNotification, object: nil)
        
        
        
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


    
    // MARK:自定义方法
    
    // MARK:模态关闭
    @objc func windowClose(window : NSWindow){
        NSApplication.shared.stopModal()
    }
    
   
    
    
    
}

