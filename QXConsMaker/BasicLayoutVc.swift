//
//  BasicLayoutVc.swift
//  QXAutoLayoutDemo
//
//  Created by Richard.q.x on 16/5/9.
//  Copyright © 2016年 labi3285_lab. All rights reserved.
//

import UIKit

class BasicLayoutVc: UIViewController {

    override func viewDidLoad() {
        
        view.backgroundColor = UIColor.whiteColor()
        
        let SuperV = view
        
        let A = NewSharp(title: "A", inView: view)
        let B = NewSharp(title: "B", inView: A)
        let C = NewSharp(title: "C", inView: A)
        let D = NewSharp(title: "D", inView: A)
        
        let T1 = NewText(text: "ABCDEFGHIJKLMNOPQRSTUVWZ", inView: view)
        let T2 = NewText(text: "ABCDEFG", inView: view)
        
        A.LEFT.EQUAL(SuperV).OFFSET(20).MAKE()
        A.RIGHT.EQUAL(SuperV).OFFSET(-20).MAKE()
        A.TOP.EQUAL(SuperV).OFFSET(64 + 20).MAKE()
        A.BOTTOM.EQUAL(SuperV).OFFSET(-20).MAKE()
        
        B.CENTER_X.EQUAL(A).MAKE()
        B.CENTER_Y.EQUAL(A).MAKE()
        B.WIDTH.EQUAL(100).MAKE()
        B.HEIGHT.EQUAL(B).WIDTH.MAKE()
        
        T1.LEFT.EQUAL(A).OFFSET(10).MAKE()
        T1.TOP.EQUAL(A).OFFSET(100).MAKE()
        
        T2.LEFT.EQUAL(T1).RIGHT.OFFSET(10).MAKE()
        T2.RIGHT.LESS_THAN_OR_EQUAL(A).OFFSET(-10).MAKE()
        T2.CENTER_Y.EQUAL(T1).MAKE()
        
        C.LEFT.EQUAL(A).MAKE()
        C.WIDTH.EQUAL(A).RATIO(0.5).MAKE()
        C.HEIGHT.EQUAL(100).MAKE()
        C.TOP.EQUAL(B).BOTTOM.MAKE()
        
        D.WIDTH.EQUAL(100).MAKE()
        D.LEFT.EQUAL(A).RIGHT.RATIO(0.5).MAKE()
        D.TOP.EQUAL(C).BOTTOM.MAKE()
                
    }
    

}

