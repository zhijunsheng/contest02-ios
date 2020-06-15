//
//  ViewController.swift
//  Contest02
//
//  Created by Grace Huang on 5/10/20.
//  Copyright © 2020 Grace Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var canvasView: CanvasView!
    
    @IBOutlet weak var problem1Slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        problem1Slider.minimumValue = 0
        problem1Slider.maximumValue = 200
        problem1Slider.value = 100
    }

    @IBAction func problem1(_ sender: Any) {
        canvasView.flag = .problem1
        canvasView.setNeedsDisplay()
    }
    
    
    @IBAction func problem2(_ sender: Any) {
        canvasView.flag = .problem2
        canvasView.setNeedsDisplay()
    }
    
    
    @IBAction func moveSlider(_ sender: UISlider) {
        print(sender.value)
        canvasView.g = CGFloat(sender.value)
        canvasView.setNeedsDisplay()
    }
    
    
    
}

