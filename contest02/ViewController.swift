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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func problem1(_ sender: Any) {
        canvasView.flag = .problem1
        canvasView.setNeedsDisplay()
    }
    
    
    @IBAction func problem2(_ sender: Any) {
        canvasView.flag = .problem2
        canvasView.setNeedsDisplay()
    }
    
    
}

