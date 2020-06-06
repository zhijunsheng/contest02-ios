//
//  ViewController.swift
//  contest02
//
//  Created by ethan on 2020/5/7.
//  Copyright © 2020 ethan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var blackView: CanvasView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func problem1(_ sender: Any){
        blackView.flag = 1
        blackView.setNeedsDisplay()
    }
    

    
    @IBAction func problem2(_ sender: Any) {
        blackView.flag = 2
        blackView.setNeedsDisplay()
    }
    
}

