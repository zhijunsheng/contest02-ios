//
//  SquareView.swift
//  contest02
//
//  Created by Andy Yan on 2020-05-08.
//  Copyright © 2020 ethan. All rights reserved.
//

import UIKit

class SquareView: UIView {
    var problemIndex = 0
    
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
        let pencil1 = UIBezierPath()
        
        pencil1.move(to: CGPoint(x: 100, y: 650))
        pencil1.addLine(to: CGPoint(x: 600, y: 650))
        
        pencil1.lineWidth = 3
        
        pencil1.move(to: CGPoint(x: 325, y: 500))
        pencil1.addLine(to: CGPoint(x: 375, y: 550))
        
        pencil1.move(to: CGPoint(x: 375, y: 500))
        pencil1.addLine(to: CGPoint(x: 325, y: 550))
        
        pencil1.stroke()
        
        let pencil2 = UIBezierPath()
        
        pencil2.move(to: CGPoint(x: 134.5, y: 402))
        pencil2.addLine(to: CGPoint(x: 567, y: 402))
        
        #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1).setStroke()
        pencil2.stroke()
        
        for i in 0 ... 10 {
            pencil2.move(to: CGPoint(x: 0, y: 375 - i * 25))
            pencil2.addLine(to: CGPoint(x: 725, y: 375 - i * 25))
            pencil2.stroke()
        }
        
        for i in 0 ... 8 {
            let pencil3 = UIBezierPath(arcCenter: CGPoint(x: 350, y: 525), radius: CGFloat(325 + i * 25), startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
            pencil3.stroke()
        }
        
        #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setFill()
        UIBezierPath(arcCenter: CGPoint(x: 350, y: 525), radius: CGFloat(325), startAngle: 0, endAngle: CGFloat.pi * 2, clockwise:true).stroke()
        UIBezierPath(arcCenter: CGPoint(x: 295, y: 576), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 407, y: 576), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 255, y: 550), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 446, y: 550), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 224.5, y: 527), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 476, y: 527), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 202.5, y: 502.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 498.5, y: 502.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 183, y: 477), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 515, y: 477), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 165.5, y: 451.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 535.5, y: 451.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 151.5, y: 426.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 551.5, y: 426.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 165.5, y: 451.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 535.5, y: 451.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 134.5, y: 402.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 567, y: 402.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 119, y: 377), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 581, y: 377), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 106.5, y: 353), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 593, y: 353), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 95.5, y: 326), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 605, y: 326), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 82.5, y: 302), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 619, y: 302), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 71, y: 278), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 632, y: 278), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 59.5, y: 253), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 641, y: 253), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 50, y: 228), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 651, y: 228), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 38.5, y: 201.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 663, y: 201.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 30, y: 178), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 672, y: 178), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 22, y: 151.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 681.5, y: 151.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 12, y: 127.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: 690, y: 127.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 350, y: 587.5), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false).fill()
    }
    //x = 350
    //y = 525
    //x = 350
    //y = 650
    // 650 - 525 = 125
    //125 / 2 = 62.5
    //525 + 62.5 = 587.5
    
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
