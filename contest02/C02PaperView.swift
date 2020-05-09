//
//  C02PaperView.swift
//  contest02
//
//  Created by Peter Shi on 2020-05-08.
//  Copyright © 2020 ethan. All rights reserved.
//

import UIKit

class C02PaperView: UIView {
    override func draw(_ rect: CGRect) {
        contest02Q1()
    }
    
    func contest02Q1() {
            let rulerLine = UIBezierPath()
            let h: CGFloat = 50
            rulerLine.move(to: CGPoint(x: 100, y: 600))
            rulerLine.addLine(to: CGPoint(x: bounds.width - 100, y: 600))
            let qPoint = UIBezierPath(arcCenter: CGPoint(x: 350, y: 550), radius: 2, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
            qPoint.fill()
            for i in -100...100 {
                let a = 10 * CGFloat(i)
                let aPoint = UIBezierPath(arcCenter: CGPoint(x: 350 + a, y: 600), radius: 2, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
                aPoint.fill()
                let b: CGFloat = ((a * a - 3) - h * h) / (h * 2)
                rulerLine.move(to: CGPoint(x: 350, y: 550))
                rulerLine.addLine(to: CGPoint(x: 350, y: 600))
                rulerLine.move(to: CGPoint(x: 350, y: 550))
                rulerLine.addLine(to: CGPoint(x: 350 + a, y: 600))
                rulerLine.move(to: CGPoint(x: 350 + a, y: 600 - (h + b) - 50))
                rulerLine.addLine(to: CGPoint(x: 350 + a, y: 600))
                let ansPoint = UIBezierPath(arcCenter: CGPoint(x: 350 + a, y: 600 - (h + b)), radius: 2, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
                ansPoint.fill()
        }
            rulerLine.stroke()
    }
}
