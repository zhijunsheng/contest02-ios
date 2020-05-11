//
//  CanvasView.swift
//  contest02
//
//  Created by Lambert Lin on 2020/5/11.
//  Copyright © 2020 ethan. All rights reserved.
//

import UIKit

class CanvasView: UIView {

    
    override func draw(_ rect: CGRect) {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 12, y: 23))
        pencil.addLine(to: CGPoint(x: 12, y: 123))
        pencil.stroke()
    }
}
