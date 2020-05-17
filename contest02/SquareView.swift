//
//  SquareView.swift
//  contest02
//
//  Created by Andy Yan on 2020-05-08.
//  Copyright © 2020 ethan. All rights reserved.
//

import UIKit

class SquareView: UIView {
    var problemIndex = 2
    
    override func draw(_ rect: CGRect) {
        
        if problemIndex == 1 {
            drawProblem2()
        }
        
        if problemIndex == 2 {
            drawProblem1()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let first = touches.first!
        let finger = first.location(in: self)
        print("\(finger.x)", "\(finger.y)")
    }
    
    func drawProblem1() {
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: 100, y: 650))
        pencil.addLine(to: CGPoint(x: 600, y: 650))
        
        pencil.move(to: CGPoint(x: 325, y: 500))
        pencil.addLine(to: CGPoint(x: 375, y: 550))
        
        pencil.move(to: CGPoint(x: 375, y: 500))
        pencil.addLine(to: CGPoint(x: 325, y: 550))
        
        pencil.stroke()
        
    }
    
    func drawProblem2()  {
    
        let pencil1 = UIBezierPath()
        
        //line segment
        pencil1.move(to: CGPoint(x: 100, y: 175))
        pencil1.addLine(to: CGPoint(x: 100, y: 225))
        
        pencil1.move(to: CGPoint(x: 550, y: 175))
        pencil1.addLine(to: CGPoint(x: 550, y: 225))
        
        pencil1.move(to: CGPoint(x: 100, y: 200))
        pencil1.addLine(to: CGPoint(x: 550, y: 200))
        
        //2 x's
        pencil1.move(to: CGPoint(x: 100, y: 500))
        pencil1.addLine(to: CGPoint(x: 150, y: 550))
        
        pencil1.move(to: CGPoint(x: 150, y: 500))
        pencil1.addLine(to: CGPoint(x: 100, y: 550))
        
        pencil1.move(to: CGPoint(x: 500, y: 500))
        pencil1.addLine(to: CGPoint(x: 550, y: 550))
        
        pencil1.move(to: CGPoint(x: 550, y: 500))
        pencil1.addLine(to: CGPoint(x: 500, y: 550))
        
        pencil1.stroke()
        
        #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1).setStroke()
        
        UIBezierPath(arcCenter: CGPoint(x: 270, y: 425), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        UIBezierPath(arcCenter: CGPoint(x: 270, y: 625), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 297.5, y: 425), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        UIBezierPath(arcCenter: CGPoint(x: 297.5, y: 625), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 297.5 + 27.5, y: 425), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        UIBezierPath(arcCenter: CGPoint(x: 297.5 + 27.5, y: 625), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 297.5 + 27.5 * 2, y: 425), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        UIBezierPath(arcCenter: CGPoint(x: 297.5 + 27.5 * 2, y: 625), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 297.5 + 27.5 * 3, y: 425), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        UIBezierPath(arcCenter: CGPoint(x: 297.5 + 27.5 * 3, y: 625), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 297.5 + 27.5 * 4, y: 430), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        UIBezierPath(arcCenter: CGPoint(x: 297.5 + 27.5 * 4, y: 620), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 298 + 27.5 * 5, y: 435), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        UIBezierPath(arcCenter: CGPoint(x: 298 + 27.5 * 5, y: 615), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 299 + 27.5 * 6, y: 445), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        UIBezierPath(arcCenter: CGPoint(x: 299 + 27.5 * 6, y: 605), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 301 + 27.5 * 7, y: 455), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        UIBezierPath(arcCenter: CGPoint(x: 300.5 + 27.5 * 7, y: 595), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 300 + 27.5 * 8, y: 473), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        UIBezierPath(arcCenter: CGPoint(x: 300 + 27.5 * 8, y: 577), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 301.5 + 27.5 * 9, y: 525), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        
        #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1).setFill()
        
        UIBezierPath(arcCenter: CGPoint(x: 125, y: 525), radius: 25, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).stroke()
        UIBezierPath(arcCenter: CGPoint(x: 525, y: 525), radius: 425, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).stroke()
        
        UIBezierPath(arcCenter: CGPoint(x: 184, y: 444), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        UIBezierPath(arcCenter: CGPoint(x: 184, y: 607.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 213.5, y: 438), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        UIBezierPath(arcCenter: CGPoint(x: 213.5, y: 617), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 241.5, y: 432.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        UIBezierPath(arcCenter: CGPoint(x: 241.5, y: 620.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 156.5, y: 459), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        UIBezierPath(arcCenter: CGPoint(x: 156.5, y: 594.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 128.5, y: 478), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        UIBezierPath(arcCenter: CGPoint(x: 128.5, y: 576.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 101.5, y: 527), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 115, y: 491.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        UIBezierPath(arcCenter: CGPoint(x: 115, y: 563.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
        
    }
    
    
}
