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
        
        view.backgroundColor = UIColor.white
        
        let SuperV = view!
        let scale: CGFloat = 1

        let A = NewSharp(title: "A", inView: view)
        let B = NewSharp(title: "B", inView: A)
        let C = NewSharp(title: "C", inView: A)
        let D = NewSharp(title: "D", inView: A)
        
        let T1 = NewText(text: "ABCDEFGHIJKLMNOPQRSTUVWZ", inView: view)
        let T2 = NewText(text: "ABCDEFG", inView: view)
        
        A.LEFT.EQUAL(SuperV).OFFSET(20).MAKE()
        A.RIGHT.EQUAL(SuperV).OFFSET(-20).MAKE()
        A.TOP.EQUAL(SuperV).OFFSET(100).MAKE()
        A.BOTTOM.EQUAL(SuperV).OFFSET(-20).MAKE()
        
        B.CENTER_X.EQUAL(A).MAKE(scale)
        B.CENTER_Y.EQUAL(A).MAKE(scale)
        B.WIDTH.EQUAL(100).MAKE(scale)
        B.HEIGHT.EQUAL(B).WIDTH.MAKE(scale)
        
        T1.LEFT.EQUAL(A).OFFSET(10).MAKE(scale)
        T1.TOP.EQUAL(A).OFFSET(100).MAKE(scale)
        
        T2.LEFT.EQUAL(T1).RIGHT.OFFSET(10).MAKE(scale)
        T2.RIGHT.LESS_THAN_OR_EQUAL(A).OFFSET(-10).MAKE(scale)
        T2.CENTER_Y.EQUAL(T1).MAKE(scale)
        
        C.LEFT.EQUAL(A).MAKE()
        C.WIDTH.EQUAL(A).RATIO(0.5).MAKE(scale)
        C.HEIGHT.EQUAL(100).MAKE(scale)
        C.TOP.EQUAL(B).BOTTOM.MAKE(scale)
        
        D.WIDTH.EQUAL(100).MAKE()
        D.LEFT.EQUAL(A).RIGHT.RATIO(0.5).MAKE(scale)
        D.TOP.EQUAL(C).BOTTOM.MAKE()
                
    }
    

}

