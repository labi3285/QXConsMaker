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
        
        Back.IN(SuperV).TOP(64 + 10).LEFT(10).BOTTOM(10).RIGHT(10).MAKE()
        
        Container.IN(Back).SIZE(200, 200).CENTER.MAKE()
        
        A.WIDTH.EQUAL(30).MAKE()
        A.HEIGHT.EQUAL(30).MAKE()
        MAKE_EQUAL_SIZE(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R)
        
        A.IN(Container).LEFT.TOP.MAKE()
        B.IN(Container).LEFT.CENTER.MAKE()
        C.IN(Container).LEFT.BOTTOM.MAKE()
        
        D.IN(Container).RIGHT.TOP.MAKE()
        E.IN(Container).RIGHT.CENTER.MAKE()
        F.IN(Container).RIGHT.BOTTOM.MAKE()
        
        G.IN(Container).TOP.CENTER.MAKE()
        H.IN(Container).BOTTOM.CENTER.CENTER.MAKE()
        
        I.IN(Container).CENTER.MAKE()
        
        J.LEFT(Container).TOP.MAKE()
        K.LEFT(Container).CENTER.MAKE()
        L.LEFT(Container).BOTTOM.MAKE()

        M.RIGHT(Container).TOP.MAKE()
        N.RIGHT(Container).CENTER.MAKE()
        O.RIGHT(Container).BOTTOM.MAKE()
        
        P.TOP(Container).OFFSET(10).LEFT(10).MAKE()
        Q.TOP(Container).CENTER.OFFSET(10).MAKE()
        R.TOP(Container).OFFSET(10).RIGHT(10).MAKE()

        S.BOTTOM(Container).OFFSET(10).LEFT(10).WIDTH(30).HEIGHT(30).MAKE()
        T.BOTTOM(Container).OFFSET(10).CENTER.SIZE(30, 30).MAKE()
        U.BOTTOM(Container).OFFSET(10).RIGHT(10).WIDTH(30).HEIGHT(30).MAKE()
        
    }
    

}
