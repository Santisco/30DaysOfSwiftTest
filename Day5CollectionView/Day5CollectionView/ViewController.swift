//
//  ViewController.swift
//  Day5CollectionView
//
//  Created by 吴冠龙 on 16/5/16.
//  Copyright © 2016年 吴冠龙. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
    @IBOutlet weak var groundView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        groundView.dataSource = self
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("page0", forIndexPath: indexPath)as!picCollectionViewCell
        return cell
    }


}

