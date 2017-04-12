//
//  QXConsMaker.swift
//  QXConsMaker
//
//  Created by Richard.q.x on 16/5/6.
//  Copyright © 2016年 labi3285_lab. All rights reserved.
//

import UIKit

//MARK: -

extension UIView {
    
    var LEFT: QXConsMaker       { return QXConsMaker.updateMaker(view: self, attribute: .left) }
    var RIGHT: QXConsMaker      { return QXConsMaker.updateMaker(view: self, attribute: .right) }
    var TOP: QXConsMaker        { return QXConsMaker.updateMaker(view: self, attribute: .top) }
    var BOTTOM: QXConsMaker     { return QXConsMaker.updateMaker(view: self, attribute: .bottom) }
    
    var LEADING: QXConsMaker    { return QXConsMaker.updateMaker(view: self, attribute: .leading) }
    var TRAILING: QXConsMaker   { return QXConsMaker.updateMaker(view: self, attribute: .trailing) }
    var WIDTH: QXConsMaker      { return QXConsMaker.updateMaker(view: self, attribute: .width) }
    var HEIGHT: QXConsMaker     { return QXConsMaker.updateMaker(view: self, attribute: .height) }
    var CENTER_X: QXConsMaker   { return QXConsMaker.updateMaker(view: self, attribute: .centerX) }
    var CENTER_Y: QXConsMaker   { return QXConsMaker.updateMaker(view: self, attribute: .centerY) }
    var BASELINE: QXConsMaker   { return QXConsMaker.updateMaker(view: self, attribute: .lastBaseline) }
    
    var FIRST_BASELINE: QXConsMaker             { return QXConsMaker.updateMaker(view: self, attribute: .firstBaseline) }
    var LEFT_MARGIN: QXConsMaker                { return QXConsMaker.updateMaker(view: self, attribute: .leftMargin) }
    var RIGHT_MARGIN: QXConsMaker               { return QXConsMaker.updateMaker(view: self, attribute: .rightMargin) }
    var TOP_MARGIN: QXConsMaker                 { return QXConsMaker.updateMaker(view: self, attribute: .topMargin) }
    var BOTTOM_MARGIN: QXConsMaker              { return QXConsMaker.updateMaker(view: self, attribute: .bottomMargin) }
    var LEADING_MARGIN: QXConsMaker             { return QXConsMaker.updateMaker(view: self, attribute: .leadingMargin) }
    var TRAILING_MARGIN: QXConsMaker            { return QXConsMaker.updateMaker(view: self, attribute: .trailingMargin) }
    var CENTER_X_WITHIN_MARGINS: QXConsMaker    { return QXConsMaker.updateMaker(view: self, attribute: .centerXWithinMargins) }
    var CENTER_Y_WITHIN_MARGINS: QXConsMaker    { return QXConsMaker.updateMaker(view: self, attribute: .centerYWithinMargins) }
    
    var NOT_AN_ATTRIBUTE: QXConsMaker    { return QXConsMaker.updateMaker(view: self, attribute: .notAnAttribute) }
    
    
    func OFFSET(_ O: CGFloat) -> QXConsMaker  { return QXConsMaker.updateMaker(offset: O) }
    func RATIO(_ R: CGFloat) -> QXConsMaker   { return QXConsMaker.updateMaker(ratio: R) }
    
    func REMOVE_CONSES()    { QXConsMaker.removeConstraints(view: self) }
    
}


//MARK: -

extension QXConsMaker {
    
    var LEFT: QXConsMaker       { return QXConsMaker.updateMaker(attribute: .left) }
    var RIGHT: QXConsMaker      { return QXConsMaker.updateMaker(attribute: .right) }
    var TOP: QXConsMaker        { return QXConsMaker.updateMaker(attribute: .top) }
    var BOTTOM: QXConsMaker     { return QXConsMaker.updateMaker(attribute: .bottom) }
    
    var LEADING: QXConsMaker    { return QXConsMaker.updateMaker(attribute: .leading) }
    var TRAILING: QXConsMaker   { return QXConsMaker.updateMaker(attribute: .trailing) }
    var WIDTH: QXConsMaker      { return QXConsMaker.updateMaker(attribute: .width) }
    var HEIGHT: QXConsMaker     { return QXConsMaker.updateMaker(attribute: .height) }
    var CENTER_X: QXConsMaker   { return QXConsMaker.updateMaker(attribute: .centerX) }
    var CENTER_Y: QXConsMaker   { return QXConsMaker.updateMaker(attribute: .centerY) }
    var BASELINE: QXConsMaker   { return QXConsMaker.updateMaker(attribute: .lastBaseline) }
    
    var FIRST_BASELINE: QXConsMaker             { return QXConsMaker.updateMaker(attribute: .firstBaseline) }
    var LEFT_MARGIN: QXConsMaker                { return QXConsMaker.updateMaker(attribute: .leftMargin) }
    var RIGHT_MARGIN: QXConsMaker               { return QXConsMaker.updateMaker(attribute: .rightMargin) }
    var TOP_MARGIN: QXConsMaker                 { return QXConsMaker.updateMaker(attribute: .topMargin) }
    var BOTTOM_MARGIN: QXConsMaker              { return QXConsMaker.updateMaker(attribute: .bottomMargin) }
    var LEADING_MARGIN: QXConsMaker             { return QXConsMaker.updateMaker(attribute: .leadingMargin) }
    var TRAILING_MARGIN: QXConsMaker            { return QXConsMaker.updateMaker(attribute: .trailingMargin) }
    var CENTER_X_WITHIN_MARGINS: QXConsMaker    { return QXConsMaker.updateMaker(attribute: .centerXWithinMargins) }
    var CENTER_Y_WITHIN_MARGINS: QXConsMaker    { return QXConsMaker.updateMaker(attribute: .centerYWithinMargins) }
    
    var NOT_AN_ATTRIBUTE: QXConsMaker    { return QXConsMaker.updateMaker(attribute: .notAnAttribute) }
    
    func EQUAL(_ V: UIView) -> QXConsMaker                { return QXConsMaker.updateMaker(view: V, relationship: .equal) }
    func GREAT_THAN_OR_EQUAL(_ V: UIView) -> QXConsMaker  { return QXConsMaker.updateMaker(view: V, relationship: .greaterThanOrEqual) }
    func LESS_THAN_OR_EQUAL(_ V: UIView) -> QXConsMaker   { return QXConsMaker.updateMaker(view: V, relationship: .lessThanOrEqual) }
    
    func EQUAL(_ V: CGFloat) -> QXConsMaker               { return QXConsMaker.updateMaker(value: V, relationship: .equal) }
    func GREAT_THAN_OR_EQUAL(_ V: CGFloat) -> QXConsMaker { return QXConsMaker.updateMaker(value: V, relationship: .greaterThanOrEqual) }
    func LESS_THAN_OR_EQUAL(_ V: CGFloat) -> QXConsMaker  { return QXConsMaker.updateMaker(value: V, relationship: .lessThanOrEqual) }
    
    
    func OFFSET(_ O: CGFloat) -> QXConsMaker      { return QXConsMaker.updateMaker(offset: O) }
    func RATIO(_ R: CGFloat) -> QXConsMaker       { return QXConsMaker.updateMaker(ratio: R) }
    func PRIORITY(_ P: CGFloat) -> QXConsMaker    { return QXConsMaker.updateMaker(priority: P) }
    
    
    @discardableResult func MAKE() -> NSLayoutConstraint   { return QXConsMaker.makeUpConstraint() }
    
}


//MARK: -

struct QXConsMaker {
    
    //MARK: vars
    
    fileprivate var newProcess: Bool = true
    
    fileprivate var firstItem: UIView? = nil
    fileprivate var secondItem: UIView? = nil
    fileprivate var firstItemAttribute: NSLayoutAttribute? = nil
    fileprivate var relationship: NSLayoutRelation? = nil
    fileprivate var secondItemAttribute: NSLayoutAttribute? = nil
    fileprivate var ratio: CGFloat = 1.0
    fileprivate var offset: CGFloat = 0
    fileprivate var priority: CGFloat = 1000
    
    
    //MARK: shared one
    fileprivate static var maker = QXConsMaker()
    
    
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
        QXConsMaker.maker.firstItem!.CONSES.add(cons)
        QXConsMaker.maker = QXConsMaker()
        return cons
    }
    
    static func removeConstraints(view v: UIView) {
        for c in v.CONSES {
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
    
    fileprivate static func getAncestorView(view1 v1: UIView, view2 v2: UIView) -> UIView? {
        
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
    
    fileprivate static func install(constraint c: NSLayoutConstraint, priority p: CGFloat = 1000) {
        let v1 = c.firstItem as! UIView
        if let v2 = c.secondItem as? UIView {
            if let v = getAncestorView(view1: v1, view2: v2) {
                v.addConstraint(c)
                c.priority = UILayoutPriority(p)
            } else {
                //assert(true, "\(c) install failed!")
            }
        } else {
            v1.addConstraint(c)
            c.priority = UILayoutPriority(p)
        }
    }
    
}

private var kUIViewConsesAssociateKey:UInt = 1202328501
extension UIView {
    var CONSES:NSMutableArray {
        get {
            var obj = objc_getAssociatedObject(self, &kUIViewConsesAssociateKey)
            if obj == nil {
                obj = NSMutableArray()
                objc_setAssociatedObject(self, &kUIViewConsesAssociateKey, obj, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
            return obj as! NSMutableArray
        }
    }
}

