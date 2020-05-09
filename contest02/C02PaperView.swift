//
//  C02PaperView.swift
//  contest02
//
//  Created by Peter Shi on 2020-05-08.
//  Copyright © 2020 ethan. All rights reserved.
//

import UIKit

class C02PaperView: UIView {
    var pageNum = 0
    
    override func draw(_ rect: CGRect) {
        if pageNum == 0 {
            contest02Q1()
        } else if pageNum == 1 {
            contest02Q2()
        }
    }
    
    func contest02Q1() {
        let rulerLine = UIBezierPath()
        let h: CGFloat = 50
        rulerLine.move(to: CGPoint(x: 100, y: 600))
        rulerLine.addLine(to: CGPoint(x: bounds.width - 100, y: 600))
        let qPoint = UIBezierPath(arcCenter: CGPoint(x: 350, y: 550), radius: 2, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        qPoint.fill()
        for i in -35...40 {
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
    
    func contest02Q2() {
           let rulerLine = UIBezierPath()
           rulerLine.move(to: CGPoint(x: 50, y: 100))
           rulerLine.addLine(to: CGPoint(x: bounds.width - 50, y: 100))
           rulerLine.stroke()
           for i in 1...10 {
               let compassLine0 = UIBezierPath()
               let compassLine1 = UIBezierPath()
               compassLine0.addArc(withCenter: CGPoint(x: 150, y: 500), radius: CGFloat(i * 50), startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
               compassLine1.addArc(withCenter: CGPoint(x: bounds.width - 150, y: 500), radius: CGFloat(500 - (i * 50)), startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
               UIColor(red: 0, green: CGFloat(i), blue: 0, alpha: 1).setStroke()
               compassLine0.stroke()
               compassLine1.stroke()
           }
           let point = UIBezierPath(arcCenter: CGPoint(x: 150, y: 500), radius: 2, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
           point.fill()
           let point1 = UIBezierPath(arcCenter: CGPoint(x: bounds.width - 150, y: 500), radius: 2, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
           
           point1.fill()
           
           let points: [CGPoint] = [CGPoint(x: 130.5, y: 454.0),
                                    CGPoint(x: 130.5, y: 546.5),
                                    CGPoint(x: 189.5, y: 409.5),
                                    CGPoint(x: 189.0, y: 594.5),
                                    CGPoint(x: 247.5, y: 387.5),
                                    CGPoint(x: 248.0, y: 616.5),
                                    CGPoint(x: 304.0, y: 373.0),
                                    CGPoint(x: 308.0, y: 627.0),
                                    CGPoint(x: 364.0, y: 370.0),
                                    CGPoint(x: 364.5, y: 630.5),
                                    CGPoint(x: 425.0, y: 375.0),
                                    CGPoint(x: 423.0, y: 628.5),
                                    CGPoint(x: 481.0, y: 389.0),
                                    CGPoint(x: 482.5, y: 619.0),
                                    CGPoint(x: 541.0, y: 410.0),
                                    CGPoint(x: 541.0, y: 595.0),
                                    CGPoint(x: 599.0, y: 453.5),
                                    CGPoint(x: 598.5, y: 548.5)]
           for point in points {
               let something = UIBezierPath()
               something.addArc(withCenter: point, radius: 2, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
               something.fill()
           }
       }
}
