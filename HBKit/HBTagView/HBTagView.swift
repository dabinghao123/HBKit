//
//  HBTagView.swift
//  HBKitDemo
//
//  Created by huangbing on 2017/12/5.
//  Copyright © 2017年 uplayTeam. All rights reserved.
//

import Foundation
import UIKit

/**
 use:
 let tagV = HBTagView(frame: CGRect(x: 0, y: 64, width: self.view.frame.width, height:0))
 let tagArr = ["好的","好的啥的房间啦","好的发送","好的沙发","阿斯蒂芬好的","好的发到付啊发放","好安抚沙发垫第三方的","好发送的","好的","好安抚安抚的","发啊安抚啊好的","啊啊发放好的","好发的顺丰的"]
 tagV.createTag(tagsArr: tagArr, tagHeight: 23, marginX: 10, marginY: 10, marginleftX: 15, marginTopY: 15, padding: 20)
 self.view.addSubview(tagV)
**/
class HBTagView: UIView {
    
   
    private var skillHeight:CGFloat = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
 
    func createTag(tagsArr:[String],tagHeight:CGFloat = 23,marginX:CGFloat = 10,marginY:CGFloat = 10,marginleftX:CGFloat = 10,marginTopY:CGFloat = 10,padding:CGFloat = 20) -> Void {
        
            var skillHeigthY:CGFloat = marginTopY
            var skillWidthX:CGFloat  = marginleftX
            var count  = 0
            
            for (i ,killTag) in tagsArr.enumerated() {
                
                let biaoqianLabel = UILabel()
                biaoqianLabel.textColor = UIColor.gray
                biaoqianLabel.layer.masksToBounds = true
                biaoqianLabel.layer.borderWidth  = 1
                biaoqianLabel.layer.borderColor  = UIColor.gray.cgColor
                biaoqianLabel.textAlignment = .center
                biaoqianLabel.font  = UIFont.systemFont(ofSize: 12)
                biaoqianLabel.backgroundColor = UIColor.white
                biaoqianLabel.text  = killTag
                biaoqianLabel.sizeToFit()
                
                if i == 0 {
                    skillWidthX = skillWidthX + (biaoqianLabel.frame.width + padding)
                }else{
                    skillWidthX = skillWidthX + marginX + (biaoqianLabel.frame.width + padding)
                }
                
                if skillWidthX > self.frame.size.width - marginleftX {
                    skillWidthX   = (biaoqianLabel.frame.width+padding) + marginleftX
                    count = count + 1
                    skillHeigthY  = CGFloat(count)*tagHeight + marginY * CGFloat(count) + marginTopY
                }
                
                biaoqianLabel.frame.origin.x = skillWidthX - (biaoqianLabel.frame.width+padding)
                biaoqianLabel.frame.origin.y = skillHeigthY
                biaoqianLabel.frame.size.width  =  (biaoqianLabel.frame.width + padding)
                biaoqianLabel.frame.size.height =  tagHeight
                self.addSubview(biaoqianLabel)
                biaoqianLabel.layer.cornerRadius = tagHeight / 2.0
                
                if i == (tagsArr.count) - 1{
                    skillHeight = biaoqianLabel.frame.height*CGFloat(count+1) + CGFloat(marginY*CGFloat(count)) +  2 * marginTopY
                    self.frame.size.height  =  skillHeight
                  }
            }
    }
}
