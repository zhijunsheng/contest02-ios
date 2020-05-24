//
//  ViewController.swift
//  contest02
//
//  Created by ethan on 2020/5/7.
//  Copyright © 2020 ethan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    @IBOutlet weak var canvasView: CanvasView!
    
    
    @IBAction func contest021(_ sender: UIButton) {
        canvasView.a = 1
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func contest0022(_ sender: UIButton) {
        canvasView.a = 2
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func contest022(_ sender: UIButton) {
        canvasView.a = 3
        canvasView.setNeedsDisplay()
    }
    
    
    
    
}

