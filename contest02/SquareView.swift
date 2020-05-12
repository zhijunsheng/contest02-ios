//
//  SquareView.swift
//  contest02
//
//  Created by Andy Yan on 2020-05-08.
//  Copyright © 2020 ethan. All rights reserved.
//

import UIKit

class SquareView: UIView {

    override func draw(_ rect: CGRect) {
        
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

    }
}
