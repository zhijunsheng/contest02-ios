//
//  ViewController.swift
//  contest02
//
//  Created by ethan on 2020/5/7.
//  Copyright © 2020 ethan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var paperView: C02PaperView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderMoved(_ sender: UISegmentedControl) {
        paperView.pageNum = sender.selectedSegmentIndex
        print(sender.selectedSegmentIndex)
        paperView.setNeedsDisplay()
    }

}

