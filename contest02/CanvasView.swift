//
//  CanvasView.swift
//  contest02
//
//  Created by Elaine on 2020-05-09.
//  Copyright © 2020 ethan. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    var flag = 1
    override func draw(_ rect: CGRect) {
        if flag == 1{
            contest2Problem1()
        }
        if flag == 2{
            contest2Problem2()
        }
        
    }
    func contest2Problem2()  {
        // x: 100,y:300
        // x: 150, y: 250
        // x:200, y:200
        // x:270, y:130
        // x:310, y:90
        // x: 250, y:150
        // x: 230, y:170
        // x: 210, y: 190
        // x: 180, y :220
        // x: 130, y; 270
        // x: 90, y: 310
        // x: 320, y: 80
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 150, y: 500))
        pencil.addLine(to: CGPoint(x: 550, y: 500))
        pencil.stroke()
        
        #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).setFill()
        let dot = UIBezierPath(arcCenter: CGPoint(x: 200, y: 300), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot.fill()
        let dot2 = UIBezierPath(arcCenter: CGPoint(x: 450, y: 300), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot2.fill()
        
        #colorLiteral(red: 0.9297945205, green: 0.6243325418, blue: 0.8457076168, alpha: 1).setStroke()
        
        
        let answerPoints: [CGPoint] = [
            CGPoint(x: 140, y: 355),
            CGPoint(x: 150, y: 225),
            CGPoint(x: 215, y: 175),
            CGPoint(x: 205, y: 435),
            CGPoint(x: 290, y: 145),
            CGPoint(x: 290, y: 455),
            CGPoint(x: 345, y: 145),
            CGPoint(x: 345, y: 455),
            CGPoint(x: 375, y: 145),
            CGPoint(x: 375, y: 455),
            CGPoint(x: 405, y: 155),
            CGPoint(x: 405, y: 445),
            CGPoint(x: 500, y: 225),
            CGPoint(x: 500, y: 375),
            CGPoint(x: 440, y: 170),
            CGPoint(x: 440, y: 430),
            CGPoint(x: 325, y: 145),
            CGPoint(x: 325, y: 455),
            CGPoint(x: 525, y: 300),
            CGPoint(x: 125, y: 300),
        ]
        let pen = UIBezierPath ()
        
        pen.move(to: CGPoint(x: 200, y: 300))
        pen.addLine(to: CGPoint(x: 140, y: 355))
        pen.move(to: CGPoint(x: 140, y: 355))
        pen.addLine(to: CGPoint(x: 450, y: 300))
        
        pen.move(to: CGPoint(x: 200, y: 300))
        pen.addLine(to: CGPoint(x: 150, y: 225))
        pen.move(to: CGPoint(x: 150, y: 225))
        pen.addLine(to: CGPoint(x: 450, y: 300))
        
        pen.move(to: CGPoint(x: 200, y: 300))
        pen.addLine(to: CGPoint(x: 215, y: 175))
        pen.move(to: CGPoint(x: 215, y: 175))
        pen.addLine(to: CGPoint(x: 450, y: 300))
        
        pen.move(to: CGPoint(x: 200, y: 300))
        pen.addLine(to: CGPoint(x: 205, y: 435))
        pen.move(to: CGPoint(x: 205, y: 435))
        pen.addLine(to: CGPoint(x: 450, y: 300))
        
        pen.move(to: CGPoint(x: 200, y: 300))
        pen.addLine(to: CGPoint(x: 290, y: 145))
        pen.move(to: CGPoint(x: 290, y: 145))
        pen.addLine(to: CGPoint(x: 450, y: 300))
        
        pen.move(to: CGPoint(x: 200, y: 300))
        pen.addLine(to: CGPoint(x: 290, y: 455))
        pen.move(to: CGPoint(x: 290, y: 455))
        pen.addLine(to: CGPoint(x: 450, y: 300))
        
        pen.move(to: CGPoint(x: 200, y: 300))
        pen.addLine(to: CGPoint(x: 345, y: 145))
        pen.move(to: CGPoint(x: 345, y: 145))
        pen.addLine(to: CGPoint(x: 450, y: 300))
        pen.stroke()
        
        for point in answerPoints {
            let dot0 = UIBezierPath(arcCenter: point, radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
            dot0.fill()
        }
    }
    func contest2Problem1()  {
        #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).setFill()
        #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).setStroke()
        let dot = UIBezierPath(arcCenter: CGPoint(x: 400, y: 500), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot.fill()
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 0, y: 600))
        pencil.addLine(to: CGPoint(x: 725, y: 600))
        pencil.stroke()
        
        #colorLiteral(red: 0.7060413099, green: 1, blue: 0.9601389573, alpha: 1).setFill()
        let h:CGFloat = 100
        for ii in -400..<400 {
            let a:CGFloat =  CGFloat(ii) * 10 // 210, 220, 230, 240,
            let b:CGFloat = a * a/(h+h) - h/2
            let answerX:CGFloat = 400 + a
            let answerY:CGFloat = 500 - b
            
            let dot4 = UIBezierPath(arcCenter: CGPoint(x: answerX, y: answerY), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
            dot4.fill()
        }
    }
}
