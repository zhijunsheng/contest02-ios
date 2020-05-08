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
        
        pencil1.move(to: CGPoint(x: 600, y: 175))
        pencil1.addLine(to: CGPoint(x: 600, y: 225))
        
        pencil1.move(to: CGPoint(x: 100, y: 200))
        pencil1.addLine(to: CGPoint(x: 600, y: 200))
        
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
        
        let pencil2 = UIBezierPath(arcCenter: CGPoint(x: 100, y: 200), radius: 175, startAngle: CGFloat.pi * 1.9, endAngle: CGFloat.pi * 0.1, clockwise: true)
        
        #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1).setStroke()
        pencil2.stroke()
        
        let pencil3 = UIBezierPath(arcCenter: CGPoint(x: 125, y: 525), radius: 175, startAngle: CGFloat.pi * 1.7, endAngle: CGFloat.pi * 1.9, clockwise: true)
        
        #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1).setStroke()
        pencil3.stroke()
        
        let pencil4 = UIBezierPath(arcCenter: CGPoint(x: 100, y: 200), radius: 200, startAngle: CGFloat.pi * 1.9, endAngle: CGFloat.pi * 0.1, clockwise: true)
        
        #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1).setStroke()
        pencil4.stroke()
        
        let pencil5 = UIBezierPath(arcCenter: CGPoint(x: 525, y: 525), radius: 200, startAngle: CGFloat.pi * 1.9, endAngle: CGFloat.pi * 0.1, clockwise: true)
        
        #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1).setStroke()
        pencil5.stroke()
        
    }
    

}
