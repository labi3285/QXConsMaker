//
//  RemakeLayoutVc.swift
//  QXAutoLayoutDemo
//
//  Created by Richard.q.x on 16/5/9.
//  Copyright © 2016年 labi3285_lab. All rights reserved.
//

import UIKit

class RemakeLayoutVc: UIViewController {
    
    var A: UILabel?
    var i: Int = 0
    
    override func viewDidLoad() {
        
        view.backgroundColor = UIColor.white
        
        let msg = NewLabel(title: "click to change layout", inView: self.view)
        
        A = NewLabel(title: "", inView: self.view)
        
        
        msg.LEFT.EQUAL(view).OFFSET(20).MAKE()
        msg.TOP.EQUAL(view).OFFSET(100).MAKE()
        
        A!.CENTER_X.EQUAL(view).MAKE()
        A!.CENTER_Y.EQUAL(view).MAKE()
        A!.WIDTH.EQUAL(100).MAKE()
        A!.HEIGHT.EQUAL(100).MAKE()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        i += 1
        
        let v = i % 3
        
        if v == 0 {
            A!.REMOVE_CONSES()
            A!.CENTER_X.EQUAL(view).MAKE()
            A!.CENTER_Y.EQUAL(view).MAKE()
            A!.WIDTH.EQUAL(100).MAKE()
            A!.HEIGHT.EQUAL(100).MAKE()
        } else if v == 1 {
            A!.REMOVE_CONSES()
            A!.CENTER_X.EQUAL(view).MAKE()
            A!.CENTER_Y.EQUAL(view).MAKE()
            A!.WIDTH.EQUAL(200).MAKE()
            A!.HEIGHT.EQUAL(200).MAKE()
        } else {
            A!.REMOVE_CONSES()
            A!.LEFT.EQUAL(view).MAKE()
            A!.CENTER_Y.EQUAL(view).MAKE()
            A!.WIDTH.EQUAL(100).MAKE()
            A!.HEIGHT.EQUAL(100).MAKE()
        }
        
        UIView.animate(withDuration: 1, animations: {
            self.view.layoutIfNeeded()
        }) 

    }
    
}
