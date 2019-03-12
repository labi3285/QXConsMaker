//
//  WrapLayoutVc.swift
//  QXAutoLayoutDemo
//
//  Created by Richard.q.x on 16/5/9.
//  Copyright © 2016年 labi3285_lab. All rights reserved.
//

import UIKit

class WrapLayoutVc: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        edgesForExtendedLayout = .bottom
        
        view.backgroundColor = UIColor.white
        
        let SuperV = view!
        
        let Back = NewSharp(title: "Back", inView: view)

        let Container = NewSharp(title: "", inView: view)
        
        let A = NewLabel(title: "A", inView: Container)
        let B = NewLabel(title: "B", inView: Container)
        let C = NewLabel(title: "C", inView: Container)
        let D = NewLabel(title: "D", inView: Container)
        let E = NewLabel(title: "E", inView: Container)
        let F = NewLabel(title: "F", inView: Container)
        let G = NewLabel(title: "G", inView: Container)
        let H = NewLabel(title: "H", inView: Container)
        let I = NewLabel(title: "I", inView: Container)
        let J = NewLabel(title: "J", inView: Container)
        let K = NewLabel(title: "K", inView: Container)
        let L = NewLabel(title: "L", inView: Container)
        let M = NewLabel(title: "M", inView: Container)
        let N = NewLabel(title: "N", inView: Container)
        let O = NewLabel(title: "O", inView: Container)
        let P = NewLabel(title: "P", inView: Container)
        let Q = NewLabel(title: "Q", inView: Container)
        let R = NewLabel(title: "R", inView: Container)
        let S = NewLabel(title: "S", inView: Container)
        let T = NewLabel(title: "T", inView: Container)
        let U = NewLabel(title: "U", inView: Container)
        
        Back.IN(SuperV).TOP(10).LEFT(10).BOTTOM(10).RIGHT(10).MAKE()
        
        Container.IN(Back).SIZE(200, 200).CENTER.MAKE()
        
        A.IN(Container).LEFT.TOP.SIZE(30, 30).MAKE()
        B.IN(Container).LEFT.CENTER.SIZE(30, 30).MAKE()
        C.IN(Container).LEFT.BOTTOM.SIZE(30, 30).MAKE()
        
        D.IN(Container).RIGHT.TOP.SIZE(30, 30).MAKE()
        E.IN(Container).RIGHT.CENTER.SIZE(30, 30).MAKE()
        F.IN(Container).RIGHT.BOTTOM.SIZE(30, 30).MAKE()
        
        G.IN(Container).TOP.CENTER.SIZE(30, 30).MAKE()
        H.IN(Container).BOTTOM.CENTER.CENTER.SIZE(30, 30).MAKE()
        
        I.IN(Container).CENTER.SIZE(30, 30).MAKE()
        
        J.LEFT(Container).TOP.SIZE(30, 30).MAKE()
        K.LEFT(Container).CENTER.SIZE(30, 30).MAKE()
        L.LEFT(Container).BOTTOM.SIZE(30, 30).MAKE()

        M.RIGHT(Container).TOP.SIZE(30, 30).MAKE()
        N.RIGHT(Container).CENTER.SIZE(30, 30).MAKE()
        O.RIGHT(Container).BOTTOM.SIZE(30, 30).MAKE()
        
        P.TOP(Container).OFFSET(10).LEFT(10).SIZE(30, 30).MAKE()
        Q.TOP(Container).CENTER.OFFSET(10).SIZE(30, 30).MAKE()
        R.TOP(Container).OFFSET(10).RIGHT(10).SIZE(30, 30).MAKE()

        S.BOTTOM(Container).OFFSET(10).LEFT(10).WIDTH(30).HEIGHT(30).MAKE()
        T.BOTTOM(Container).OFFSET(10).CENTER.SIZE(30, 30).MAKE()
        U.BOTTOM(Container).OFFSET(10).RIGHT(10).WIDTH(30).HEIGHT(30).MAKE()
        
    }
    

}
