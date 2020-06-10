//
//  ViewController.swift
//  contest02
//
//  Created by ethan on 2020/5/7.
//  Copyright © 2020 ethan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var controlSlider: UISlider!
    @IBOutlet weak var canvasView: CanvasView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        controlSlider.minimumValue = 1
        controlSlider.maximumValue = 700
    }
    
    @IBAction func problem1(_ sender: Any) {
        canvasView.flag = 1
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func problem2(_ sender: Any) {
        canvasView.flag = 2
        canvasView.setNeedsDisplay()

    }
    
    @IBAction func moveSlider(_ sender: UISlider) {
        print(sender.value)
        canvasView.h = CGFloat(sender.value)
        canvasView.setNeedsDisplay()
    }
}


