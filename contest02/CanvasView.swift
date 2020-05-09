//
//  CanvasView.swift
//  contest02
//
//  Created by Elaine on 2020-05-09.
//  Copyright © 2020 ethan. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    
    override func draw(_ rect: CGRect) {
        contest2()
    }
    func contest2()  {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 150, y: 500))
        pencil.addLine(to: CGPoint(x: 550, y: 500))
        pencil.stroke()
    }
    
}
