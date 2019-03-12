//
//  LayoutChangeVc.swift
//  QXAutoLayoutDemo
//
//  Created by Richard.q.x on 16/5/9.
//  Copyright © 2016年 labi3285_lab. All rights reserved.
//

import UIKit

class LayoutChangeVc: UIViewController {
    
    var widthSlider: UISlider?
    var widthCons: NSLayoutConstraint?

    override func viewDidLoad() {
        
        view.backgroundColor = UIColor.white
        
        let SuperV = view!

        widthSlider = {
            let one = UISlider()
            one.minimumValue = 10
            one.maximumValue = 200
            view.addSubview(one)
            one.addTarget(self, action: #selector(widthSliderValueChange(_:)), for: .valueChanged)
            return one
            }()
        
        let sharp = NewSharp(title: "", inView: SuperV)
        
        widthSlider!.CENTER_X.EQUAL(SuperV).MAKE()
        widthSlider!.CENTER_Y.EQUAL(SuperV).MAKE()
        widthSlider!.WIDTH.EQUAL(200).MAKE()
        
        sharp.CENTER_X.EQUAL(SuperV).MAKE()
        sharp.TOP.EQUAL(SuperV).OFFSET(100).MAKE()
        widthCons = sharp.WIDTH.EQUAL(10).MAKE()
        sharp.HEIGHT.EQUAL(100).MAKE()
        
    }
    
    @objc func widthSliderValueChange(_ sender: UISlider) {
        widthCons?.constant = CGFloat(sender.value)
    }
    
}
