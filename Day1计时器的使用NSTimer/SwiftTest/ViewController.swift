//
//  ViewController.swift
//  SwiftTest
//
//  Created by 吴冠龙 on 16/5/12.
//  Copyright © 2016年 吴冠龙. All rights reserved.
//

import UIKit
//  第一个swift小软件，稍微有经验之后更看重标准规范方面
class ViewController: UIViewController {
//  NSTimer类
    var Timer = NSTimer()
    var Counter = 0.0
    
    @IBOutlet weak var showLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var endButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        showLabel.text = String("0.0")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//  官方文档前有＋是类方法，主要用于构造
    @IBAction func startTiming(sender: AnyObject) {
        startButton.enabled = false
        endButton.enabled = true
        Timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.UpdateTimer), userInfo: nil, repeats: true)
    }

    @IBAction func endTiming(sender: AnyObject) {
        startButton.enabled = true
        endButton.enabled = false
        Timer.invalidate()
    }
//  format的使用
    @IBAction func resetTiming(sender: AnyObject) {
        Counter=0
        Timer.invalidate()
        showLabel.text = String(format:"%0.1f", Counter)
    }

    func UpdateTimer(){
        Counter = Counter + 0.1
        showLabel.text = String(format:"%0.1f", Counter)
    }
}

