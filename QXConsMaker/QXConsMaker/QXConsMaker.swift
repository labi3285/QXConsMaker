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
    
    public var LEFT: QXConsMaker       { return QXConsMaker.updateMaker(view: self, attribute: .left) }
    public var RIGHT: QXConsMaker      { return QXConsMaker.updateMaker(view: self, attribute: .right) }
    public var TOP: QXConsMaker        { return QXConsMaker.updateMaker(view: self, attribute: .top) }
    public var BOTTOM: QXConsMaker     { return QXConsMaker.updateMaker(view: self, attribute: .bottom) }
    
    public var LEADING: QXConsMaker    { return QXConsMaker.updateMaker(view: self, attribute: .leading) }
    public var TRAILING: QXConsMaker   { return QXConsMaker.updateMaker(view: self, attribute: .trailing) }
    public var WIDTH: QXConsMaker      { return QXConsMaker.updateMaker(view: self, attribute: .width) }
    public var HEIGHT: QXConsMaker     { return QXConsMaker.updateMaker(view: self, attribute: .height) }
    public var CENTER_X: QXConsMaker   { return QXConsMaker.updateMaker(view: self, attribute: .centerX) }
    public var CENTER_Y: QXConsMaker   { return QXConsMaker.updateMaker(view: self, attribute: .centerY) }
    public var BASELINE: QXConsMaker   { return QXConsMaker.updateMaker(view: self, attribute: .lastBaseline) }
    
    public var FIRST_BASELINE: QXConsMaker             { return QXConsMaker.updateMaker(view: self, attribute: .firstBaseline) }
    public var LEFT_MARGIN: QXConsMaker                { return QXConsMaker.updateMaker(view: self, attribute: .leftMargin) }
    public var RIGHT_MARGIN: QXConsMaker               { return QXConsMaker.updateMaker(view: self, attribute: .rightMargin) }
    public var TOP_MARGIN: QXConsMaker                 { return QXConsMaker.updateMaker(view: self, attribute: .topMargin) }
    public var BOTTOM_MARGIN: QXConsMaker              { return QXConsMaker.updateMaker(view: self, attribute: .bottomMargin) }
    public var LEADING_MARGIN: QXConsMaker             { return QXConsMaker.updateMaker(view: self, attribute: .leadingMargin) }
    public var TRAILING_MARGIN: QXConsMaker            { return QXConsMaker.updateMaker(view: self, attribute: .trailingMargin) }
    public var CENTER_X_WITHIN_MARGINS: QXConsMaker    { return QXConsMaker.updateMaker(view: self, attribute: .centerXWithinMargins) }
    public var CENTER_Y_WITHIN_MARGINS: QXConsMaker    { return QXConsMaker.updateMaker(view: self, attribute: .centerYWithinMargins) }
    
    public var NOT_AN_ATTRIBUTE: QXConsMaker    { return QXConsMaker.updateMaker(view: self, attribute: .notAnAttribute) }
    
    
    public func OFFSET(_ O: CGFloat) -> QXConsMaker  { return QXConsMaker.updateMaker(offset: O) }
    public func RATIO(_ R: CGFloat) -> QXConsMaker   { return QXConsMaker.updateMaker(ratio: R) }
    
    public func REMOVE_CONSES()    { QXConsMaker.removeConstraints(view: self) }
    
}


//MARK: -

extension QXConsMaker {
    
    public var LEFT: QXConsMaker       { return QXConsMaker.updateMaker(attribute: .left) }
    public var RIGHT: QXConsMaker      { return QXConsMaker.updateMaker(attribute: .right) }
    public var TOP: QXConsMaker        { return QXConsMaker.updateMaker(attribute: .top) }
    public var BOTTOM: QXConsMaker     { return QXConsMaker.updateMaker(attribute: .bottom) }
    
    public var LEADING: QXConsMaker    { return QXConsMaker.updateMaker(attribute: .leading) }
    public var TRAILING: QXConsMaker   { return QXConsMaker.updateMaker(attribute: .trailing) }
    public var WIDTH: QXConsMaker      { return QXConsMaker.updateMaker(attribute: .width) }
    public var HEIGHT: QXConsMaker     { return QXConsMaker.updateMaker(attribute: .height) }
    public var CENTER_X: QXConsMaker   { return QXConsMaker.updateMaker(attribute: .centerX) }
    public var CENTER_Y: QXConsMaker   { return QXConsMaker.updateMaker(attribute: .centerY) }
    public var BASELINE: QXConsMaker   { return QXConsMaker.updateMaker(attribute: .lastBaseline) }
    
    public var FIRST_BASELINE: QXConsMaker             { return QXConsMaker.updateMaker(attribute: .firstBaseline) }
    public var LEFT_MARGIN: QXConsMaker                { return QXConsMaker.updateMaker(attribute: .leftMargin) }
    public var RIGHT_MARGIN: QXConsMaker               { return QXConsMaker.updateMaker(attribute: .rightMargin) }
    public var TOP_MARGIN: QXConsMaker                 { return QXConsMaker.updateMaker(attribute: .topMargin) }
    public var BOTTOM_MARGIN: QXConsMaker              { return QXConsMaker.updateMaker(attribute: .bottomMargin) }
    public var LEADING_MARGIN: QXConsMaker             { return QXConsMaker.updateMaker(attribute: .leadingMargin) }
    public var TRAILING_MARGIN: QXConsMaker            { return QXConsMaker.updateMaker(attribute: .trailingMargin) }
    public var CENTER_X_WITHIN_MARGINS: QXConsMaker    { return QXConsMaker.updateMaker(attribute: .centerXWithinMargins) }
    public var CENTER_Y_WITHIN_MARGINS: QXConsMaker    { return QXConsMaker.updateMaker(attribute: .centerYWithinMargins) }
    
    public var NOT_AN_ATTRIBUTE: QXConsMaker    { return QXConsMaker.updateMaker(attribute: .notAnAttribute) }
    
    public func EQUAL(_ V: UIView) -> QXConsMaker                { return QXConsMaker.updateMaker(view: V, relationship: .equal) }
    public func GREAT_THAN_OR_EQUAL(_ V: UIView) -> QXConsMaker  { return QXConsMaker.updateMaker(view: V, relationship: .greaterThanOrEqual) }
    public func LESS_THAN_OR_EQUAL(_ V: UIView) -> QXConsMaker   { return QXConsMaker.updateMaker(view: V, relationship: .lessThanOrEqual) }
    
    public func EQUAL(_ V: CGFloat) -> QXConsMaker               { return QXConsMaker.updateMaker(value: V, relationship: .equal) }
    public func GREAT_THAN_OR_EQUAL(_ V: CGFloat) -> QXConsMaker { return QXConsMaker.updateMaker(value: V, relationship: .greaterThanOrEqual) }
    public func LESS_THAN_OR_EQUAL(_ V: CGFloat) -> QXConsMaker  { return QXConsMaker.updateMaker(value: V, relationship: .lessThanOrEqual) }
    
    
    public func OFFSET(_ O: CGFloat) -> QXConsMaker      { return QXConsMaker.updateMaker(offset: O) }
    public func RATIO(_ R: CGFloat) -> QXConsMaker       { return QXConsMaker.updateMaker(ratio: R) }
    public func PRIORITY(_ P: CGFloat) -> QXConsMaker    { return QXConsMaker.updateMaker(priority: P) }
    
    
    @discardableResult public func MAKE() -> NSLayoutConstraint   { return QXConsMaker.makeUpConstraint(scale: 1) }
    @discardableResult public func MAKE(_ scale: CGFloat) -> NSLayoutConstraint   { return QXConsMaker.makeUpConstraint(scale: scale) }

}


//MARK: -
public struct QXConsMaker {
    
    //MARK: vars
    
    fileprivate var newProcess: Bool = true
    
    fileprivate weak var firstItem: UIView? = nil
    fileprivate weak var secondItem: UIView? = nil
    fileprivate var firstItemAttribute: NSLayoutConstraint.Attribute? = nil
    fileprivate var relationship: NSLayoutConstraint.Relation? = nil
    fileprivate var secondItemAttribute: NSLayoutConstraint.Attribute? = nil
    fileprivate var ratio: CGFloat = 1.0
    fileprivate var offset: CGFloat = 0
    fileprivate var priority: CGFloat = 1000
    
    
    //MARK: shared one
    fileprivate static var maker = QXConsMaker()
    
    
    //MARK: base tools
    
    fileprivate static func updateMaker(view v: UIView, attribute a: NSLayoutConstraint.Attribute) -> QXConsMaker {
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
    
    fileprivate static func updateMaker(attribute a: NSLayoutConstraint.Attribute) -> QXConsMaker {
        self.maker.secondItemAttribute = a
        return self.maker
    }
    
    fileprivate static func updateMaker(view v: UIView, relationship r: NSLayoutConstraint.Relation) -> QXConsMaker {
        self.maker.relationship = r
        self.maker.secondItem = v
        return self.maker
    }
    
    fileprivate static func updateMaker(value v: CGFloat, relationship r: NSLayoutConstraint.Relation) -> QXConsMaker {
        self.maker.relationship = r
        self.maker.secondItem = nil
        self.maker.offset = v
        return self.maker
    }
    
    fileprivate static func updateMaker(ratio r: CGFloat) -> QXConsMaker {
        self.maker.ratio = r
        return self.maker
    }
    
    fileprivate static func updateMaker(offset o: CGFloat) -> QXConsMaker {
        self.maker.offset = o
        return self.maker
    }
    
    fileprivate static func updateMaker(priority p: CGFloat = 1000) -> QXConsMaker {
        self.maker.priority = p
        return self.maker
    }
    
    fileprivate static func makeUpConstraint(scale s: CGFloat) -> NSLayoutConstraint {
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
                               constant:     self.maker.offset * s)
        QXConsMaker.install(constraint: cons)
        QXConsMaker.maker.firstItem!.CONSES.add(cons)
        QXConsMaker.maker = QXConsMaker()
        return cons
    }
    
    fileprivate static func removeConstraints(view v: UIView) {
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
                c.priority = UILayoutPriority(Float(p))
                v.addConstraint(c)
            } else {
                assert(true, "\(c) install failed!")
            }
        } else {
            c.priority = UILayoutPriority(Float(p))
            v1.addConstraint(c)
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

