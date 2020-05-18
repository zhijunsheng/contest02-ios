//
//  CanvasView.swift
//  contest02
//
//  Created by Lambert Lin on 2020/5/11.
//  Copyright © 2020 ethan. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    var flag = -23
    
    override func draw(_ rect: CGRect) {
        if flag == 1 {
            we2()
        } else if flag == 2 {
            problem()
        }
    }
    func we2() {
            
        let awe1234 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 400), radius: 150, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: false)
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setStroke()
        awe1234.stroke()
        
        let pencil2345 = UIBezierPath()
        pencil2345.move(to: CGPoint(x: 223, y: 350))
        pencil2345.addLine(to: CGPoint(x: 505, y: 350))
        pencil2345.stroke()
        
        //
        
        let awe12345 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 400), radius: 100, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: false)
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setStroke()
        awe12345.stroke()
        
        let pencil23456 = UIBezierPath()
        pencil23456.move(to: CGPoint(x: 263, y: 400))
        pencil23456.addLine(to: CGPoint(x: 463, y: 400))
        pencil23456.stroke()
        
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 12, y: 500))
        pencil.addLine(to: CGPoint(x: 716, y: 500))
        pencil.lineWidth = 5
        pencil.stroke()
        let aw = UIBezierPath(arcCenter: CGPoint(x: 364, y: 400), radius: 4, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: false)
        
        aw.fill()
        let awe = UIBezierPath(arcCenter: CGPoint(x: 364, y: 400), radius: 200, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: false)
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setStroke()
        awe.stroke()
        
        let pencil1 = UIBezierPath()
        pencil1.move(to: CGPoint(x: 364, y: 50))
        pencil1.addLine(to: CGPoint(x: 364, y: 500))
        pencil1.stroke()
        
        let pencil2 = UIBezierPath()
        pencil2.move(to: CGPoint(x: 194, y: 300))
        pencil2.addLine(to: CGPoint(x: 538, y: 300))
        pencil2.stroke()
        
        //
        
        let awe12 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 400), radius: 250, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: false)
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setStroke()
        awe12.stroke()
        
        let pencil23 = UIBezierPath()
        pencil23.move(to: CGPoint(x: 163, y: 250))
        pencil23.addLine(to: CGPoint(x: 565, y: 250))
        pencil23.stroke()
        
        //
        
        let awe123 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 400), radius: 300, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: false)
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setStroke()
        awe123.stroke()
        
        let pencil234 = UIBezierPath()
        pencil234.move(to: CGPoint(x: 140, y: 200))
        pencil234.addLine(to: CGPoint(x: 588, y: 200))
        pencil234.stroke()
        
        //
        
        
        
        let awe123456 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 400), radius: 350, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: false)
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setStroke()
        awe123456.stroke()
        
        let pencil234567 = UIBezierPath()
        pencil234567.move(to: CGPoint(x: 117, y: 150))
        pencil234567.addLine(to: CGPoint(x: 611, y: 150))
        pencil234567.stroke()
        
        //
        
        let awe12345678 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 400), radius: 400, startAngle: 1.1 * CGFloat.pi, endAngle: 1.9 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setStroke()
        awe12345678.stroke()
        
        let pencil23456789 = UIBezierPath()
        pencil23456789.move(to: CGPoint(x: 100, y: 100))
        pencil23456789.addLine(to: CGPoint(x: 634, y: 100))
        pencil23456789.stroke()
        
        //
        
        let awe123456789 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 400), radius: 450, startAngle: 1.1 * CGFloat.pi, endAngle: 1.9 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setStroke()
        awe123456789.stroke()
        
        let pencil2345678910 = UIBezierPath()
        pencil2345678910.move(to: CGPoint(x: 85, y: 50))
        pencil2345678910.addLine(to: CGPoint(x: 647, y: 50))
        pencil2345678910.stroke()
        
        //
        
        let awe12345678910 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 400), radius: 500, startAngle: 1.1 * CGFloat.pi, endAngle: 1.9 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setStroke()
        awe12345678910.stroke()
        
        let pencil234567891011 = UIBezierPath()
        pencil234567891011.move(to: CGPoint(x: 70, y: 0))
        pencil234567891011.addLine(to: CGPoint(x: 660, y: 0))
        pencil234567891011.stroke()
        
        //
        let awe1234567891011 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 400), radius: 50, startAngle: 0.1 * CGFloat.pi, endAngle: 0.9 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setStroke()
        awe1234567891011.stroke()
        
        
        
        let awe123456789101112 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 400), radius: 67, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setStroke()
        awe123456789101112.stroke()
        
        let pencil23456789101112 = UIBezierPath()
        pencil23456789101112.move(to: CGPoint(x: 310, y: 433))
        pencil23456789101112.addLine(to: CGPoint(x:425, y: 433))
        pencil23456789101112.stroke()
        
        
        
        let answerPoints: [CGPoint] = [
            CGPoint(x: 538, y: 300),
            CGPoint(x: 193, y: 300),
            CGPoint(x: 163, y: 250),
            CGPoint(x: 565, y: 250),
            CGPoint(x: 140, y: 200),
            CGPoint(x: 588, y: 200),
            CGPoint(x: 223, y: 350),
            CGPoint(x: 505, y: 350),
            CGPoint(x: 263, y: 400),
            CGPoint(x: 463, y: 400),
            CGPoint(x: 117, y: 150),
            CGPoint(x: 611, y: 150),
            CGPoint(x: 100, y: 100),
            CGPoint(x: 634, y: 100),
            CGPoint(x: 85, y: 50),
            CGPoint(x: 647, y: 50),
            CGPoint(x: 70, y: 0),
            CGPoint(x: 660, y: 0),
            CGPoint(x: 364, y: 450),
            CGPoint(x: 310, y: 433),
            CGPoint(x: 425, y: 433),
        ]
        for point in answerPoints {
            let ee14 = UIBezierPath(arcCenter: point , radius: 3, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: false)
            #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setFill()
            ee14.fill()
        }
    }
    func problem() {
        let awe = UIBezierPath(arcCenter: CGPoint(x: 124, y:300), radius: 3, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: false)
        #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1).setFill()
        awe.fill()
        
        let awe1 = UIBezierPath(arcCenter: CGPoint(x: 324, y:300), radius: 3, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: false)
        #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1).setFill()
        awe1.fill()
        
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 54, y: 700))
        pencil.addLine(to: CGPoint(x: 394, y: 700))
        pencil.stroke()
        
        let awe12 = UIBezierPath(arcCenter: CGPoint(x: 124, y:300), radius: 70, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: false)
        awe12.stroke()
        
        let awe13 = UIBezierPath(arcCenter: CGPoint(x: 324, y:300), radius: 270, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: false)
        awe13.stroke()
    }
}
