//
//  ViewController.swift
//  Day4SnapChat&CameraView
//
//  Created by 吴冠龙 on 16/5/15.
//  Copyright © 2016年 吴冠龙. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var mainScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let leftScroll = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewControllerWithIdentifier("leftScroll") as UIViewController
        let rightScroll = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("rightScroll") as UIViewController
        let centerView = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewControllerWithIdentifier("centerView") as UIViewController
        self.addChildViewController(leftScroll)
        self.addChildViewController(rightScroll)
        self.addChildViewController(centerView)
        mainScrollView.addSubview(leftScroll.view)
        leftScroll.didMoveToParentViewController(self)
        mainScrollView.addSubview(rightScroll.view)
        rightScroll.didMoveToParentViewController(self)
        mainScrollView.addSubview(centerView.view)
        centerView.didMoveToParentViewController(self)
        var centerViewFrame : CGRect = centerView.view.frame
        var rightScrollFrame: CGRect = rightScroll.view.frame
        centerViewFrame.origin.x = self.view.frame.width
        centerView.view.frame = centerViewFrame
        rightScrollFrame.origin.x = 2 * self.view.frame.width
        rightScroll.view.frame = rightScrollFrame
        mainScrollView.contentSize = CGSizeMake( self.view.frame.width * 3, self.view.frame.height)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

