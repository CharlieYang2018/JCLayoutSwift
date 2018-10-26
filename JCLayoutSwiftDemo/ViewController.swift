//
//  ViewController.swift
//  JCLayoutSwiftDemo
//
//  Created by Linda Wang on 2018/10/26.
//  Copyright © 2018 Charlie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.setup()
    }
    
    func setup() {
        let redView = UIView()
        redView.backgroundColor = UIColor.red
        self.view.addSubview(redView)
        redView.jcLayoutManager.create({ (make) in
            make.left.top.bottom.equal(self.view)
            make.width.v_equal(200)
        })
    }


}

