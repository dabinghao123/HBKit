//
//  ViewController.swift
//  HBKitDemo
//
//  Created by huangbing on 2017/12/5.
//  Copyright © 2017年 uplayTeam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //HBTagView Test
        
        let tagV = HBTagView(frame: CGRect(x: 0, y: 64, width: self.view.frame.width, height:0))
        tagV.layer.borderColor = UIColor.red.cgColor
        tagV.layer.borderWidth = 1
        let tagArr = ["好的","好的啥的房间啦","好的发送","好的沙发","阿斯蒂芬好的","好的发到付啊发放","好安抚沙发垫第三方的","好发送的","好的","好安抚安抚的","发啊安抚啊好的","啊啊发放好的","好发的顺丰的"]
        tagV.createTag(tagsArr: tagArr, tagHeight: 23, marginX: 10, marginY: 10, marginleftX: 15, marginTopY: 15, padding: 20)
        self.view.addSubview(tagV)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

