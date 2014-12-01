//
//  SecondController.swift
//  Swift-TableView
//
//  Created by sen5labs on 14-10-9.
//  Copyright (c) 2014年 sen5labs. All rights reserved.
//

import UIKit

class SecondController: UIViewController {

    var btnTitle: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.orangeColor()

        var btn = UIButton()
        btn.frame = CGRectMake(0, 84, self.view.frame.size.width, 40)
        btn.setTitle(btnTitle, forState: UIControlState.Normal)
        btn.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        btn.backgroundColor = UIColor.yellowColor()
        btn.titleLabel?.textAlignment = NSTextAlignment.Center
        self.view.addSubview(btn)

        btn.addTarget(self, action:Selector("click:"), forControlEvents: UIControlEvents.TouchUpInside)
    }

    func click(btn:UIButton){

        println("hello world == \(btn.currentTitle!)")
    
        
    
    }
   

}
