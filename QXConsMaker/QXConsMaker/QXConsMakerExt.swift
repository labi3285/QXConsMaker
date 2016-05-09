//
//  QXConsMakerExt.swift
//  QXAutoLayoutDemo
//
//  Created by Richard.q.x on 16/5/6.
//  Copyright © 2016年 labi3285_lab. All rights reserved.
//

import UIKit

public func MAKE_EQUAL_WIDTH(views: UIView ...) -> [NSLayoutConstraint] {
    var cones = [NSLayoutConstraint]()
    var first: UIView? = nil
    for v in views {
        if let fv = first {
            cones.append(v.WIDTH.EQUAL(fv).MAKE())
            first = v
        } else {
            first = v
        }
    }
    return cones
}

public func MAKE_EQUAL_HEIGHT(views: UIView ...) -> [NSLayoutConstraint] {
    var cones = [NSLayoutConstraint]()
    var first: UIView? = nil
    for v in views {
        if let fv = first {
            cones.append(v.HEIGHT.EQUAL(fv).MAKE())
            first = v
        } else {
            first = v
        }
    }
    return cones
}

public func MAKE_EQUAL_SIZE(views: UIView ...) -> [NSLayoutConstraint] {
    var cones = [NSLayoutConstraint]()
    var first: UIView? = nil
    for v in views {
        if let fv = first {
            cones.append(v.WIDTH.EQUAL(fv).MAKE())
            cones.append(v.HEIGHT.EQUAL(fv).MAKE())
            first = v
        } else {
            first = v
        }
    }
    return cones
}

extension UIView {
    
    func IN(V: UIView) -> QXConsesMaker        { return QXConsesMaker.updateMaker(view: self, containerView: V, isIn: true, possition: nil) }
    
    func TOP(V: UIView) -> QXConsesMaker       { return QXConsesMaker.updateMaker(view: self, containerView: V, isIn: false, possition: .Top) }

    func LEFT(V: UIView) -> QXConsesMaker      { return QXConsesMaker.updateMaker(view: self, containerView: V, isIn: false, possition: .Left) }
    
    func BOTTOM(V: UIView) -> QXConsesMaker    { return QXConsesMaker.updateMaker(view: self, containerView: V, isIn: false, possition: .Bottom) }
    
    func RIGHT(V: UIView) -> QXConsesMaker     { return QXConsesMaker.updateMaker(view: self, containerView: V, isIn: false, possition: .Right) }
    
    func MAKE(W w: CGFloat, H h: CGFloat) -> [NSLayoutConstraint] {
        let cons1 = self.WIDTH.EQUAL(w).MAKE()
        let cons2 = self.HEIGHT.EQUAL(h).MAKE()
        return [cons1, cons2]
    }
    
}

extension QXConsesMaker {
    
    func SIZE(W: CGFloat, _ H: CGFloat) -> QXConsesMaker { return WIDTH(W).HEIGHT(H) }
    
    func TOP(T: CGFloat) -> QXConsesMaker       { return QXConsesMaker.updateMaker(top: T) }
    func LEFT(L: CGFloat) -> QXConsesMaker      { return QXConsesMaker.updateMaker(left: L) }
    func BOTTOM(B: CGFloat) -> QXConsesMaker    { return QXConsesMaker.updateMaker(bottom: B) }
    func RIGHT(R: CGFloat) -> QXConsesMaker     { return QXConsesMaker.updateMaker(right: R) }
    func WIDTH(W: CGFloat) -> QXConsesMaker     { return QXConsesMaker.updateMaker(width: W) }
    func HEIGHT(H: CGFloat) -> QXConsesMaker    { return QXConsesMaker.updateMaker(height: H) }
    
    func OFFSET(O: CGFloat) -> QXConsesMaker    { return QXConsesMaker.updateMaker(offset: O) }

    var CENTER: QXConsesMaker                   { return QXConsesMaker.updateMaker(center: true) }
    var CENTER_X: QXConsesMaker                 { return QXConsesMaker.updateMaker(centerX: true) }
    var CENTER_Y: QXConsesMaker                 { return QXConsesMaker.updateMaker(centerY: true) }

    var LEFT: QXConsesMaker                     { return LEFT(0) }
    var RIGHT: QXConsesMaker                    { return RIGHT(0) }
    var TOP: QXConsesMaker                      { return TOP(0) }
    var BOTTOM: QXConsesMaker                   { return BOTTOM(0) }
    
    func MAKE() -> [NSLayoutConstraint]         { return QXConsesMaker.makeUpConstraints() }

}

enum QXConsesPossion {
    case Top
    case Left
    case Bottom
    case Right
}

struct QXConsesMaker {
    
    private var isIn: Bool = true
    private var view: UIView?
    private var containerView: UIView?
    
    private var topMargin: CGFloat?
    private var leftMargin: CGFloat?
    private var bottomMargin: CGFloat?
    private var rightMargin: CGFloat?

    private var offset: CGFloat?

    private var width: CGFloat?
    private var height: CGFloat?
    
    private var possition: QXConsesPossion?
    private var centerX: Bool = false
    private var centerY: Bool = false
    private var center: Bool = false

    private static var maker = QXConsesMaker()
    
    static func updateMaker(view v: UIView, containerView cv: UIView, isIn i: Bool, possition p: QXConsesPossion?) -> QXConsesMaker {
        self.maker.isIn = i
        self.maker.view = v
        self.maker.containerView = cv
        self.maker.possition = p
        if let ps = p {
            switch ps {
            case .Top: self.maker.topMargin = 0
            case .Left: self.maker.leftMargin = 0
            case .Bottom: self.maker.bottomMargin = 0
            case .Right: self.maker.rightMargin = 0
            }
        }
        if i == false {
            self.updateMaker(offset: 0)
        }
        return self.maker
    }
    
    static func updateMaker(left l: CGFloat) -> QXConsesMaker {
        self.maker.leftMargin = QXConsesMaker.maker.isIn ? l : -l
        return self.maker
    }
    
    static func updateMaker(right r: CGFloat) -> QXConsesMaker {
        self.maker.rightMargin = QXConsesMaker.maker.isIn ? -r : r
        return self.maker
    }
    
    static func updateMaker(top t: CGFloat) -> QXConsesMaker {
        self.maker.topMargin = QXConsesMaker.maker.isIn ? t : -t
        return self.maker
    }
    
    static func updateMaker(bottom b: CGFloat) -> QXConsesMaker {
        self.maker.bottomMargin = QXConsesMaker.maker.isIn ? -b : b
        return self.maker
    }
    
    static func updateMaker(offset o: CGFloat) -> QXConsesMaker {
        self.maker.offset = o
        return self.maker
    }
    
    static func updateMaker(width w: CGFloat) -> QXConsesMaker {
        self.maker.width = w
        return self.maker
    }
    
    static func updateMaker(height h: CGFloat) -> QXConsesMaker {
        self.maker.height = h
        return self.maker
    }
    
    static func updateMaker(centerX x: Bool) -> QXConsesMaker {
        self.maker.centerX = x
        return self.maker
    }
    
    static func updateMaker(centerY y: Bool) -> QXConsesMaker {
        self.maker.centerY = y
        return self.maker
    }
    
    static func updateMaker(center c: Bool) -> QXConsesMaker {
        self.maker.center = c
        return self.maker
    }
    
    static func makeUpConstraints() -> [NSLayoutConstraint] {
        
        let view = QXConsesMaker.maker.view!
        let containerView = QXConsesMaker.maker.containerView!
        
        var conses = [NSLayoutConstraint]()
        
        if let offset = QXConsesMaker.maker.offset {
            
            if let pos = QXConsesMaker.maker.possition {
                switch pos {
                case .Top:
                    QXConsesMaker.maker.topMargin = nil
                case .Left:
                    QXConsesMaker.maker.leftMargin = nil
                case .Bottom:
                    QXConsesMaker.maker.bottomMargin = nil
                case .Right:
                    QXConsesMaker.maker.rightMargin = nil
                }
            }
            
            if QXConsesMaker.maker.isIn {
                if let pos = QXConsesMaker.maker.possition {
                    switch pos {
                    case .Top:
                        conses.append(view.TOP.EQUAL(containerView).OFFSET(offset).MAKE())
                    case .Left:
                        conses.append(view.LEFT.EQUAL(containerView).OFFSET(offset).MAKE())
                    case .Bottom:
                        conses.append(view.BOTTOM.EQUAL(containerView).OFFSET(-offset).MAKE())
                    case .Right:
                        conses.append(view.RIGHT.EQUAL(containerView).OFFSET(-offset).MAKE())
                    }
                }
            } else {
                if let pos = QXConsesMaker.maker.possition {
                    switch pos {
                    case .Top:
                        conses.append(view.BOTTOM.EQUAL(containerView).TOP.OFFSET(-offset).MAKE())
                    case .Left:
                        conses.append(view.RIGHT.EQUAL(containerView).LEFT.OFFSET(-offset).MAKE())
                    case .Bottom:
                        conses.append(view.TOP.EQUAL(containerView).BOTTOM.OFFSET(offset).MAKE())
                    case .Right:
                        conses.append(view.LEFT.EQUAL(containerView).RIGHT.OFFSET(offset).MAKE())
                    }
                }
            }
        }
        
        if let width = QXConsesMaker.maker.width {
            conses.append(view.WIDTH.EQUAL(width).MAKE())
        }
        if let height = QXConsesMaker.maker.height {
            conses.append(view.HEIGHT.EQUAL(height).MAKE())
        }
        
        if let topMargin = QXConsesMaker.maker.topMargin {
            conses.append(view.TOP.EQUAL(containerView).OFFSET(topMargin).MAKE())
        }
        if let leftMargin = QXConsesMaker.maker.leftMargin {
            conses.append(view.LEFT.EQUAL(containerView).OFFSET(leftMargin).MAKE())
        }
        if let bottomMargin = QXConsesMaker.maker.bottomMargin {
            conses.append(view.BOTTOM.EQUAL(containerView).OFFSET(bottomMargin).MAKE())
        }
        if let rightMargin = QXConsesMaker.maker.rightMargin {
            conses.append(view.RIGHT.EQUAL(containerView).OFFSET(rightMargin).MAKE())
        }
        
        if QXConsesMaker.maker.centerX {
            conses.append(view.CENTER_X.EQUAL(containerView).MAKE())
        }
        
        if QXConsesMaker.maker.centerY {
            conses.append(view.CENTER_Y.EQUAL(containerView).MAKE())
        }
        
        if QXConsesMaker.maker.center {
            if let pos = QXConsesMaker.maker.possition {
                switch pos {
                case .Bottom, .Top:
                    conses.append(view.CENTER_X.EQUAL(containerView).MAKE())
                case .Left, .Right:
                    conses.append(view.CENTER_Y.EQUAL(containerView).MAKE())
                }
            } else {
                if QXConsesMaker.maker.leftMargin != nil || QXConsesMaker.maker.rightMargin != nil {
                    conses.append(view.CENTER_Y.EQUAL(containerView).MAKE())
                } else if QXConsesMaker.maker.topMargin != nil || QXConsesMaker.maker.bottomMargin != nil {
                    conses.append(view.CENTER_X.EQUAL(containerView).MAKE())
                } else {
                    conses.append(view.CENTER_X.EQUAL(containerView).MAKE())
                    conses.append(view.CENTER_Y.EQUAL(containerView).MAKE())
                }
            }
        }
        
        QXConsesMaker.maker = QXConsesMaker()
        
        return conses
        
    }

}
