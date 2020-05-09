//
//  BoardView.swift
//  contest02
//
//  Created by Angie Yan on 2020-05-09.
//  Copyright © 2020 ethan. All rights reserved.
//

import UIKit

class BoardView: UIView {

    override func draw(_ rect: CGRect) {
        let line = UIBezierPath()
        line.move(to: CGPoint(x: 100, y: 100))
        line.addLine(to: CGPoint(x: 200, y: 100))
        line.stroke()
    }
    

}
