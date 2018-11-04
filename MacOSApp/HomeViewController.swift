//
//  ViewController.swift
//  MacAppTest
//
//  Created by ChengliMac on 2018/10/30.
//  Copyright © 2018年 刘成利. All rights reserved.
//

import Cocoa

class HomeViewController: NSViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "线图"
        // Do any additional setup after loading the view.
        
        
        
        self.buildUI()
        
         NotificationCenter.default.addObserver(self, selector: #selector(addWindowUI(window: )), name: NSWindow.didResizeNotification, object: nil)
        
    }

    
    override func viewDidAppear() {
        super.viewDidAppear()
        
        self.view.window?.isRestorable = false // 不记忆窗口上次退出的位置
        self.view.window?.center()
        
        self.addWindowUI(window: self.view.window!)
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    
    // MARK:构建窗口
   @objc func addWindowUI(window : NSWindow){
        
        if  let titleView = self.view.window?.standardWindowButton(.closeButton)?.superview {
            
            let registerBtn    = NSButton()
            let x              = self.view.frame.width - 80
            let frame          = CGRect(x: x, y: 0, width: 70, height: 22)
            registerBtn.frame  = frame
            registerBtn.title  = "注册"
            registerBtn.target = self
            registerBtn.bezelStyle = .rounded
            registerBtn.setButtonType(.pushOnPushOff)
            titleView.addSubview(registerBtn)
            
        }
        
    }
    
    
    // MARK:构建视图
    func buildUI(){
        
      
       
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
        
        
        let view = NSView.init(frame: NSRect.init(x: 50, y: 50, width: 300, height: 200))
        view.wantsLayer = true
        view.layer?.backgroundColor = NSColor.lightGray.cgColor
        view.layer?.borderWidth     = 2
        view.layer?.cornerRadius    = 10
        
        self.view.addSubview(view)
     
        
    }
    

    
    // 按钮事件
    @objc func buttonClickEvent(){
        
        print("点击了按钮")
        
    }
}

