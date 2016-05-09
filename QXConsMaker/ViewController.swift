//
//  ViewController.swift
//  QXAutoLayoutDemo
//
//  Created by Richard.q.x on 16/5/5.
//  Copyright © 2016年 labi3285_lab. All rights reserved.
//

import UIKit

public func NewSharp(title t: String, inView: UIView) -> UIView {
    let view = UIView()
    let backColor = UIColor(red: CGFloat(arc4random_uniform(255))/255.0, green: CGFloat(arc4random_uniform(255))/255.0, blue: CGFloat(arc4random_uniform(255))/255.0, alpha: 0.5)
    let label = UILabel()
    label.text = t
    view.addSubview(label)
    label.LEFT.EQUAL(view).OFFSET(3).MAKE()
    label.TOP.EQUAL(view).MAKE()
    inView.addSubview(view)
    view.HEIGHT.GREAT_THAN_OR_EQUAL(40).MAKE()
    view.backgroundColor = backColor
    return view
}

public func NewText(text t: String, inView: UIView) -> UILabel {
    let backColor = UIColor(red: CGFloat(arc4random_uniform(255))/255.0, green: CGFloat(arc4random_uniform(255))/255.0, blue: CGFloat(arc4random_uniform(255))/255.0, alpha: 0.5)
    let label = UILabel()
    label.text = t
    label.backgroundColor = backColor
    inView.addSubview(label)
    return label
}

public func NewLabel(title t: String, inView: UIView) -> UILabel {
    let backColor = UIColor(red: CGFloat(arc4random_uniform(255))/255.0, green: CGFloat(arc4random_uniform(255))/255.0, blue: CGFloat(arc4random_uniform(255))/255.0, alpha: 0.5)
    let label = UILabel()
    label.text = t
    label.font = UIFont.systemFontOfSize(16)
    label.textAlignment = NSTextAlignment.Center
    label.backgroundColor = backColor
    inView.addSubview(label)
    return label
}

class ViewController: UITableViewController {
    
    var models: [AnyClass] = {
        return [
            BasicLayoutVc.self,
            WrapLayoutVc.self,
            LayoutChangeVc.self,
            RemakeLayoutVc.self
        ]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("UITableViewCell")!
        if let str: NSString = NSStringFromClass(models[indexPath.row]) {
            let arr = str.componentsSeparatedByString(".")
            if arr.count >= 2 {
                cell.textLabel?.text = arr[1]
            }
        }
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let cls = models[indexPath.row] as? UIViewController.Type {
            let vc = cls.init()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

