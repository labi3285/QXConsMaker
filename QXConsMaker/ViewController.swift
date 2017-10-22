//
//  ViewController.swift
//  QXAutoLayoutDemo
//
//  Created by Richard.q.x on 16/5/5.
//  Copyright © 2016年 labi3285_lab. All rights reserved.
//

import UIKit

class View: UIView {

    var title: String = "" {
        didSet {
            label.text = title
        }
    }
    
    private let label = UILabel()
    required init() {
        super.init(frame: CGRect.zero)
        addSubview(label)
        backgroundColor = UIColor(red: CGFloat(arc4random_uniform(255))/255.0, green: CGFloat(arc4random_uniform(255))/255.0, blue: CGFloat(arc4random_uniform(255))/255.0, alpha: 0.5)
        label.IN(self).LEFT.RIGHT.TOP.BOTTOM.MAKE()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    deinit {
        print("deinit-\(title)")
    }
}

class TextView: UILabel {
    deinit {
        print("deinit-\(self.text ?? "")")
    }
}

public func NewSharp(title t: String, inView: UIView) -> UIView {
    let view = View()
    view.title = t
    inView.addSubview(view)
    //view.HEIGHT.GREAT_THAN_OR_EQUAL(40).MAKE()
    return view
}

public func NewText(text t: String, inView: UIView) -> UILabel {
    let backColor = UIColor(red: CGFloat(arc4random_uniform(255))/255.0, green: CGFloat(arc4random_uniform(255))/255.0, blue: CGFloat(arc4random_uniform(255))/255.0, alpha: 0.5)
    let label = TextView()
    label.text = t
    label.backgroundColor = backColor
    inView.addSubview(label)
    return label
}

public func NewLabel(title t: String, inView: UIView) -> UILabel {
    let backColor = UIColor(red: CGFloat(arc4random_uniform(255))/255.0, green: CGFloat(arc4random_uniform(255))/255.0, blue: CGFloat(arc4random_uniform(255))/255.0, alpha: 0.5)
    let label = TextView()
    label.text = t
    label.font = UIFont.systemFont(ofSize: 16)
    label.textAlignment = NSTextAlignment.center
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
        view.backgroundColor = UIColor.white
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell")!
        let str = NSStringFromClass(models[indexPath.row])
        let arr = str.components(separatedBy: ".")
        if arr.count >= 2 {
            cell.textLabel?.text = arr[1]
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cls = models[indexPath.row] as? UIViewController.Type {
            let vc = cls.init()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

