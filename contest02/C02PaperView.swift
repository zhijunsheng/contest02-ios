//
//  C02PaperView.swift
//  contest02
//
//  Created by Peter Shi on 2020-05-08.
//  Copyright © 2020 Peter Shi. All rights reserved.
//

import UIKit

class C02PaperView: UIView {
    var pageNum = 0
    
    override func draw(_ rect: CGRect) {
        if pageNum == 0 {
            contest02Q1_1()
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
    
    func contest02Q1_1() {
        let rulerLine = UIBezierPath()
        let h: CGFloat = 50
        rulerLine.move(to: CGPoint(x: 100, y: 600))
        rulerLine.addLine(to: CGPoint(x: bounds.width - 100, y: 600))
        let qPoint = UIBezierPath(arcCenter: CGPoint(x: 350, y: 550), radius: 2, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        qPoint.fill()
        for i in -35...40 {
            let x = 10 * CGFloat(i)
            let y: CGFloat = (x * x + h * h) / (2 * h)
            let ansPoint = UIBezierPath(arcCenter: CGPoint(x: 350 + x, y: 600 - y), radius: 2, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
            ansPoint.fill()
        }
        rulerLine.stroke()
    }
    
    func contest02Q2() {
        for i in -125...125 {
            let a: CGFloat = 250
            let b: CGFloat = (bounds.width - 300) / 2
            let x: CGFloat = b + CGFloat(i) * 3.68
            let y2: CGFloat = a * a + x * x * b * b / (a * a) - x * x - b * b
            if y2 > 0 {
                let y: CGFloat = sqrt(y2)
                let point = UIBezierPath(arcCenter: CGPoint(x: bounds.width / 2 + x, y: 500 - y), radius: 2, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
                point.fill()
                let point1 = UIBezierPath(arcCenter: CGPoint(x: bounds.width / 2 + x, y: 500 + y), radius: 2, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
                point1.fill()
            }
        }
        UIBezierPath(arcCenter: CGPoint(x: 150 - (500 - (bounds.width - 300)) / 2, y: 500), radius: 2, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: (500 - (bounds.width - 300)) / 2 + bounds.width - 150, y: 500), radius: 2, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        for i in 1...10 {
            let compassLine0 = UIBezierPath()
            let compassLine1 = UIBezierPath()
            compassLine0.addArc(withCenter: CGPoint(x: 150, y: 500), radius: CGFloat(i * 50), startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
            compassLine1.addArc(withCenter: CGPoint(x: bounds.width - 150, y: 500), radius: CGFloat(500 - (i * 50)), startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
            UIColor(red: CGFloat(i) / 10, green: CGFloat(i) / 10, blue: CGFloat(i) / 10, alpha: 1).setStroke()
            compassLine0.stroke()
            compassLine1.stroke()
        }
        
        let point = UIBezierPath(arcCenter: CGPoint(x: 150, y: 500), radius: 2, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        point.fill()
        let point1 = UIBezierPath(arcCenter: CGPoint(x: bounds.width - 150, y: 500), radius: 2, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        point1.fill()
        
        let rulerLine = UIBezierPath()
        rulerLine.move(to: CGPoint(x: 114, y: 25))
        rulerLine.addLine(to: CGPoint(x: bounds.width - 114, y: 25))
        UIColor.black.setStroke()
        rulerLine.stroke()
    }
}
