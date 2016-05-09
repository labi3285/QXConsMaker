//
//  QXConsMaker.swift
//  QXAutoLayoutDemo
//
//  Created by Richard.q.x on 16/5/6.
//  Copyright © 2016年 labi3285_lab. All rights reserved.
//

import UIKit

//MARK: -

extension UIView {
    
    var LEFT: QXConsMaker       { return QXConsMaker.updateMaker(view: self, attribute: .Left) }
    var RIGHT: QXConsMaker      { return QXConsMaker.updateMaker(view: self, attribute: .Right) }
    var TOP: QXConsMaker        { return QXConsMaker.updateMaker(view: self, attribute: .Top) }
    var BOTTOM: QXConsMaker     { return QXConsMaker.updateMaker(view: self, attribute: .Bottom) }
    
    var LEADING: QXConsMaker    { return QXConsMaker.updateMaker(view: self, attribute: .Leading) }
    var TRAILING: QXConsMaker   { return QXConsMaker.updateMaker(view: self, attribute: .Trailing) }
    var WIDTH: QXConsMaker      { return QXConsMaker.updateMaker(view: self, attribute: .Width) }
    var HEIGHT: QXConsMaker     { return QXConsMaker.updateMaker(view: self, attribute: .Height) }
    var CENTER_X: QXConsMaker   { return QXConsMaker.updateMaker(view: self, attribute: .CenterX) }
    var CENTER_Y: QXConsMaker   { return QXConsMaker.updateMaker(view: self, attribute: .CenterY) }
    var BASELINE: QXConsMaker   { return QXConsMaker.updateMaker(view: self, attribute: .Baseline) }
    
    var FIRST_BASELINE: QXConsMaker             { return QXConsMaker.updateMaker(view: self, attribute: .FirstBaseline) }
    var LEFT_MARGIN: QXConsMaker                { return QXConsMaker.updateMaker(view: self, attribute: .LeftMargin) }
    var RIGHT_MARGIN: QXConsMaker               { return QXConsMaker.updateMaker(view: self, attribute: .RightMargin) }
    var TOP_MARGIN: QXConsMaker                 { return QXConsMaker.updateMaker(view: self, attribute: .TopMargin) }
    var BOTTOM_MARGIN: QXConsMaker              { return QXConsMaker.updateMaker(view: self, attribute: .BottomMargin) }
    var LEADING_MARGIN: QXConsMaker             { return QXConsMaker.updateMaker(view: self, attribute: .LeadingMargin) }
    var TRAILING_MARGIN: QXConsMaker            { return QXConsMaker.updateMaker(view: self, attribute: .TrailingMargin) }
    var CENTER_X_WITHIN_MARGINS: QXConsMaker    { return QXConsMaker.updateMaker(view: self, attribute: .CenterXWithinMargins) }
    var CENTER_Y_WITHIN_MARGINS: QXConsMaker    { return QXConsMaker.updateMaker(view: self, attribute: .CenterYWithinMargins) }
    
    var NOT_AN_ATTRIBUTE: QXConsMaker    { return QXConsMaker.updateMaker(view: self, attribute: .NotAnAttribute) }
    
    
    func OFFSET(O: CGFloat) -> QXConsMaker  { return QXConsMaker.updateMaker(offset: O) }
    func RATIO(R: CGFloat) -> QXConsMaker   { return QXConsMaker.updateMaker(ratio: R) }
    
    func REMOVE_CONSES()    { QXConsMaker.removeConstraints(view: self) }
    
}


//MARK: -

extension QXConsMaker {
    
    var LEFT: QXConsMaker       { return QXConsMaker.updateMaker(attribute: .Left) }
    var RIGHT: QXConsMaker      { return QXConsMaker.updateMaker(attribute: .Right) }
    var TOP: QXConsMaker        { return QXConsMaker.updateMaker(attribute: .Top) }
    var BOTTOM: QXConsMaker     { return QXConsMaker.updateMaker(attribute: .Bottom) }
    
    var LEADING: QXConsMaker    { return QXConsMaker.updateMaker(attribute: .Leading) }
    var TRAILING: QXConsMaker   { return QXConsMaker.updateMaker(attribute: .Trailing) }
    var WIDTH: QXConsMaker      { return QXConsMaker.updateMaker(attribute: .Width) }
    var HEIGHT: QXConsMaker     { return QXConsMaker.updateMaker(attribute: .Height) }
    var CENTER_X: QXConsMaker   { return QXConsMaker.updateMaker(attribute: .CenterX) }
    var CENTER_Y: QXConsMaker   { return QXConsMaker.updateMaker(attribute: .CenterY) }
    var BASELINE: QXConsMaker   { return QXConsMaker.updateMaker(attribute: .Baseline) }
    
    var FIRST_BASELINE: QXConsMaker             { return QXConsMaker.updateMaker(attribute: .FirstBaseline) }
    var LEFT_MARGIN: QXConsMaker                { return QXConsMaker.updateMaker(attribute: .LeftMargin) }
    var RIGHT_MARGIN: QXConsMaker               { return QXConsMaker.updateMaker(attribute: .RightMargin) }
    var TOP_MARGIN: QXConsMaker                 { return QXConsMaker.updateMaker(attribute: .TopMargin) }
    var BOTTOM_MARGIN: QXConsMaker              { return QXConsMaker.updateMaker(attribute: .BottomMargin) }
    var LEADING_MARGIN: QXConsMaker             { return QXConsMaker.updateMaker(attribute: .LeadingMargin) }
    var TRAILING_MARGIN: QXConsMaker            { return QXConsMaker.updateMaker(attribute: .TrailingMargin) }
    var CENTER_X_WITHIN_MARGINS: QXConsMaker    { return QXConsMaker.updateMaker(attribute: .CenterXWithinMargins) }
    var CENTER_Y_WITHIN_MARGINS: QXConsMaker    { return QXConsMaker.updateMaker(attribute: .CenterYWithinMargins) }
    
    var NOT_AN_ATTRIBUTE: QXConsMaker    { return QXConsMaker.updateMaker(attribute: .NotAnAttribute) }
    
    func EQUAL(V: UIView) -> QXConsMaker                { return QXConsMaker.updateMaker(view: V, relationship: .Equal) }
    func GREAT_THAN_OR_EQUAL(V: UIView) -> QXConsMaker  { return QXConsMaker.updateMaker(view: V, relationship: .GreaterThanOrEqual) }
    func LESS_THAN_OR_EQUAL(V: UIView) -> QXConsMaker   { return QXConsMaker.updateMaker(view: V, relationship: .LessThanOrEqual) }
    
    func EQUAL(V: CGFloat) -> QXConsMaker               { return QXConsMaker.updateMaker(value: V, relationship: .Equal) }
    func GREAT_THAN_OR_EQUAL(V: CGFloat) -> QXConsMaker { return QXConsMaker.updateMaker(value: V, relationship: .GreaterThanOrEqual) }
    func LESS_THAN_OR_EQUAL(V: CGFloat) -> QXConsMaker  { return QXConsMaker.updateMaker(value: V, relationship: .LessThanOrEqual) }

    
    func OFFSET(O: CGFloat) -> QXConsMaker      { return QXConsMaker.updateMaker(offset: O) }
    func RATIO(R: CGFloat) -> QXConsMaker       { return QXConsMaker.updateMaker(ratio: R) }
    func PRIORITY(P: CGFloat) -> QXConsMaker    { return QXConsMaker.updateMaker(priority: P) }

    
    func MAKE() -> NSLayoutConstraint   { return QXConsMaker.makeUpConstraint() }
    
}


//MARK: -

struct QXConsMaker {
    
    //MARK: vars
    
    private var newProcess: Bool = true
    
    private var firstItem: UIView? = nil
    private var secondItem: UIView? = nil
    private var firstItemAttribute: NSLayoutAttribute? = nil
    private var relationship: NSLayoutRelation? = nil
    private var secondItemAttribute: NSLayoutAttribute? = nil
    var ratio: CGFloat = 1.0
    var offset: CGFloat = 0
    var priority: CGFloat = 1000
    
    
    //MARK: shared one
    private static var maker = QXConsMaker()
    
    
    //MARK: base tools
    
    static func updateMaker(view v: UIView, attribute a: NSLayoutAttribute) -> QXConsMaker {
        if self.maker.newProcess {
            self.maker.firstItem = v
            self.maker.firstItemAttribute = a
            self.maker.secondItemAttribute = a
            self.maker.newProcess = false
        } else {
            self.maker.secondItem = v
            self.maker.secondItemAttribute = a
        }
        return self.maker
    }
    
    static func updateMaker(attribute a: NSLayoutAttribute) -> QXConsMaker {
        self.maker.secondItemAttribute = a
        return self.maker
    }
    
    static func updateMaker(view v: UIView, relationship r: NSLayoutRelation) -> QXConsMaker {
        self.maker.relationship = r
        self.maker.secondItem = v
        return self.maker
    }
    
    static func updateMaker(value v: CGFloat, relationship r: NSLayoutRelation) -> QXConsMaker {
        self.maker.relationship = r
        self.maker.secondItem = nil
        self.maker.offset = v
        return self.maker
    }
    
    static func updateMaker(ratio r: CGFloat) -> QXConsMaker {
        self.maker.ratio = r
        return self.maker
    }
    
    static func updateMaker(offset o: CGFloat) -> QXConsMaker {
        self.maker.offset = o
        return self.maker
    }
    
    static func updateMaker(priority p: CGFloat = 1000) -> QXConsMaker {
        self.maker.priority = p
        return self.maker
    }
    
    static func makeUpConstraint() -> NSLayoutConstraint {
        if let v = QXConsMaker.maker.firstItem {
            v.translatesAutoresizingMaskIntoConstraints = false
        }
        let cons =
            NSLayoutConstraint(item:         self.maker.firstItem!,
                               attribute:    self.maker.firstItemAttribute!,
                               relatedBy:    self.maker.relationship!,
                               toItem:       self.maker.secondItem,
                               attribute:    self.maker.secondItemAttribute!,
                               multiplier:   self.maker.ratio,
                               constant:     self.maker.offset)
        QXConsMaker.install(constraint: cons)
        QXConsMaker.maker.firstItem!.conses.addObject(cons)
        QXConsMaker.maker = QXConsMaker()
        return cons
    }
    
    static func removeConstraints(view v: UIView) {
        for c in v.conses {
            let cons = c as! NSLayoutConstraint
            var view: UIView?
            let v1 = cons.firstItem as! UIView
            if let obj = cons.secondItem {
                if let v2 = obj as? UIView {
                    view = getAncestorView(view1: v1, view2: v2)
                }
            }
            if view == nil {
                view = v1
            }
            view!.removeConstraint(cons)
        }
    }

    
    //MARK: other tools
    
    private static func getAncestorView(view1 v1: UIView, view2 v2: UIView) -> UIView? {
        
        if v1 == v2 { return v1 }
        
        var svForLoop: UIView?
        
        var arr1 = [v1]
        svForLoop = v1.superview
        while svForLoop != nil {
            arr1.append(svForLoop!)
            svForLoop = svForLoop!.superview
        }
        
        var arr2 = [v2]
        svForLoop = v2.superview
        while svForLoop != nil {
            arr2.append(svForLoop!)
            svForLoop = svForLoop!.superview
        }
        
        if arr1.contains(v2) { return v2 }
        if arr2.contains(v1) { return v1 }
        
        for v in arr1 {
            if arr2.contains(v) {
                return v
            }
        }
        
        return nil
    }
    
    private static func install(constraint c: NSLayoutConstraint, priority p: CGFloat = 1000) {
        let v1 = c.firstItem as! UIView
        if let v2 = c.secondItem as? UIView {
            if let v = getAncestorView(view1: v1, view2: v2) {
                v.addConstraint(c)
                c.priority = UILayoutPriority(p)
            } else {
                assert(true, "\(c) install failed!")
            }
        } else {
            v1.addConstraint(c)
            c.priority = UILayoutPriority(p)
        }
    }
    
}

private var kConsesAssociateKey:UInt = 5201314
extension UIView {
    var conses:NSMutableArray {
        get {
            var obj = objc_getAssociatedObject(self, &kConsesAssociateKey)
            if obj == nil {
                obj = NSMutableArray()
                objc_setAssociatedObject(self, &kConsesAssociateKey, obj, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
            return obj as! NSMutableArray
        }
    }
}

