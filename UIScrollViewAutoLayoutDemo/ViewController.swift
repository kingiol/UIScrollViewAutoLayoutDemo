//
//  ViewController.swift
//  UIScrollViewAutoLayoutDemo
//
//  Created by Kingiol on 15/10/22.
//  Copyright © 2015年 Kingiol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showScrollAutoLayoutUsingCodeAction(sender: UIButton) {
        self.navigationController?.showViewController(CodeUIScrollViewController(), sender: nil)
    }
}

