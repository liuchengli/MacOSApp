//
//  ViewController.swift
//  MacAppTest
//
//  Created by ChengliMac on 2018/10/30.
//  Copyright © 2018年 刘成利. All rights reserved.
//

import Cocoa

class HomeViewController: NSViewController {

//    override func loadView() {
//        
////        let frame : NSRect  = NSApplication.shared.keyWindow?.frame ?? NSRect.init(x: 0, y: 0, width: 0, height: 0)
////        self.view = NSView.init(frame: frame)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "线图"
        // Do any additional setup after loading the view.
        
        self.createUI()
        
        
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    
    func createUI(){
        
      
       
        // NSText
        let oneLabel = NSText.init(frame: NSRect.init(x: 0, y: 0, width: 100, height: 30))
        oneLabel.alignment = .left
        oneLabel.textColor = NSColor.red
        oneLabel.font      = NSFont.systemFont(ofSize: 15)
        oneLabel.string    = "请输入"
        self.view.addSubview(oneLabel)
        
        
        // NSText(没有NSLabel,禁用NSText一些参数)
        let twoLabel = NSTextField.init(frame: NSRect.init(x: 150, y: 0, width: 100, height: 30))
        twoLabel.font = NSFont.systemFont(ofSize: 18)
        
        twoLabel.stringValue  = "一个文本"
        twoLabel.isEditable   = false
        twoLabel.isBezeled    = false
        twoLabel.isSelectable = false
        self.view.addSubview(twoLabel)
        
        
        
        
        // button
        let buttn = NSButton.init(frame: NSRect.init(x: 300, y: 0, width: 100, height: 30))
        buttn.title       = "点击按钮"
        buttn.setButtonType(.pushOnPushOff) // 类型
        buttn.bezelStyle  = .rounded   // 风格
        buttn.target      = self
        buttn.action      = #selector(buttonClickEvent)
        self.view.addSubview(buttn)
        
        
        let view = NSView.init(frame: NSRect.init(x: 300, y: 100, width: 100, height: 30))
        
        self.view.addSubview(view)
     
        
    }
    

    
    // 按钮事件
    @objc func buttonClickEvent(){
        
        print("点击了按钮")
        
    }
}

