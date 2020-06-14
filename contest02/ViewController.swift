//
//  ViewController.swift
//  contest02
//
//  Created by Peter Shi on 2020/5/7.
//  Copyright © 2020 Peter Shi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var paperView: C02PaperView!
    @IBOutlet var varSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderMoved(_ sender: UISegmentedControl) {
        paperView.pageNum = sender.selectedSegmentIndex
        print(sender.selectedSegmentIndex)
        paperView.setNeedsDisplay()
    }

    @IBAction func sliderSlided(_ sender: UISlider) {
        paperView.h = CGFloat(sender.value)
        paperView.setNeedsDisplay()
    }
}

