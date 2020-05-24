//
//  CanvasView.swift
//  contest02
//
//  Created by Halwong on 2020/5/10.
//  Copyright © 2020 ethan. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    var a:Int = -1
    
    override func draw(_ rect: CGRect) {
        
        if a == 1 {
            contest021()
        } else if a == 2 {
            contest0022()
        } else if a == 3 {
            contest022()
        }

        
        
    }
    
    func contest0022() {
        let line = UIBezierPath()
        line.move(to: CGPoint(x: 100, y: 674))
        line.addLine(to: CGPoint(x: 400, y: 674))
        line.stroke()
        
        UIBezierPath(arcCenter: CGPoint(x: 313, y: 313), radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 498, y: 313), radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        
        #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1).setStroke()
        
        UIColor.red.setFill()
        
        let a: CGFloat = 150
        let b: CGFloat = 92.5
        for i in -16 ..< 15 {
            let x: CGFloat = 10 + CGFloat(i) * 10
            let y: CGFloat = sqrt((a - x*b/a)*(a - x*b/a) - (x - b)*(x - b))
            print(y)
            
            
            
            let point = UIBezierPath(arcCenter: CGPoint(x: 313 + b + x, y: 313 - y), radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
            point.fill()
            
            let point2 = UIBezierPath(arcCenter: CGPoint(x: 313 + b + x, y: 313 + y), radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
            point2.fill()
        }
    }
    
    func contest021() {
            let line = UIBezierPath()
            line.move(to: CGPoint(x: 134, y: 650))
            line.addLine(to: CGPoint(x: 646, y: 650))
            line.stroke()
            
            let point = CGPoint(x: 350, y: 550)
            
            let point1 = UIBezierPath(arcCenter: point, radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
            point1.fill()
            
    //        bounds.width
            
            let h: CGFloat = 650 - point.y
            UIColor.red.setFill()
            
            for i in 0 ..<  20 {
                let point2: CGPoint = CGPoint(x: point.x - 10 - CGFloat(i) * 20, y: 650)
                let point3: CGPoint = CGPoint(x: point.x + 10 + CGFloat(i) * 20, y: 650)
                let a: CGFloat = point.x - point2.x
                let b = (a * a - h * h) / (2 * h)
                let answerPoint = UIBezierPath(arcCenter: CGPoint(x: point2.x, y: 650 - h - b), radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
                answerPoint.fill()
                let answerPoint2 = UIBezierPath(arcCenter: CGPoint(x: point3.x, y: 650 - h - b), radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
                answerPoint2.fill()
            }
        }
        
    func contest022() {
        let line = UIBezierPath()
        line.move(to: CGPoint(x: 100, y: 674))
        line.addLine(to: CGPoint(x: 400, y: 674))
        line.stroke()
        
        let point1 = UIBezierPath(arcCenter: CGPoint(x: 313, y: 313), radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        point1.fill()
        
        let point2 = UIBezierPath(arcCenter: CGPoint(x: 498, y: 313), radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        point2.fill()
        
        #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1).setStroke()
        
        for i in 0 ..< 6 {
            let circle1 = UIBezierPath(arcCenter: CGPoint(x: 313, y: 313), radius: CGFloat(230 - 30 * i), startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
            
            circle1.stroke()
            
            let circle2 = UIBezierPath(arcCenter: CGPoint(x: 498, y: 313), radius: CGFloat(70 + 30 * i), startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
            circle2.stroke()
            
            let line = UIBezierPath()
            line.move(to: CGPoint(x: 0, y: 313))
            line.addLine(to: CGPoint(x: 700, y: 313))
            line.stroke()
        }
        
        let dots: [CGPoint] = [
            CGPoint(x: 486.5, y: 216.5),
            CGPoint(x: 440, y: 200),
            CGPoint(x: 389.5, y: 200),
            CGPoint(x: 340, y: 210),
            CGPoint(x: 440, y: 200),
            CGPoint(x: 290, y: 240),
            CGPoint(x: 534, y: 258),
            // (300 - 185) / 2  - 185 = 255.5
            CGPoint(x: 255.5, y: 313),
            
            CGPoint(x: 488, y: 413),
            CGPoint(x: 440, y: 430),
            CGPoint(x: 389, y: 433),
            CGPoint(x: 340, y: 421),
            CGPoint(x: 291, y: 391),
            CGPoint(x: 534, y: 374),
            // (300 - 185) / 2  + 185 = 555.5
            CGPoint(x: 555.5, y: 313),
            
        ]
        
        for dot in dots {
            let dot = UIBezierPath(arcCenter: dot, radius: 3, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
            dot.fill()
        }
    }
}
