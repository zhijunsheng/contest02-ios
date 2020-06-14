//
//  ViewController.swift
//  contest02
//
//  Created by ethan on 2020/5/7.
//  Copyright © 2020 ethan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var canvasView: CanvasView!
    @IBOutlet weak var parabolaSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        parabolaSlider.maximumValue = 200
        parabolaSlider.minimumValue = 0
    }
    
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
    
    @IBAction func sliderMoved(_ sender: UISlider) {
        canvasView.h = CGFloat(sender.value)
        canvasView.setNeedsDisplay()
        print("\(sender.value)")
    }
    
    
    
}

