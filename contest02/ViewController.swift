//
//  ViewController.swift
//  contest02
//
//  Created by ethan on 2020/5/7.
//  Copyright © 2020 ethan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var squareView: SquareView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func problem1(_ sender: Any) {
        squareView.problemIndex = 1
        squareView.setNeedsDisplay()
    }
    
    @IBAction func problem2(_ sender: Any) {
        squareView.problemIndex = 2
        squareView.setNeedsDisplay()
    }
}

