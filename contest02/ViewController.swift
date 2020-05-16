//
//  ViewController.swift
//  contest02
//
//  Created by ethan on 2020/5/7.
//  Copyright © 2020 ethan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var boardView: BoardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func showProblem1(_ sender: Any) {
        boardView.flag = 1
        boardView.setNeedsDisplay()
    }
    

    @IBAction func showProblem2(_ sender: Any) {
        boardView.flag = 2
        boardView.setNeedsDisplay()
    }
}

