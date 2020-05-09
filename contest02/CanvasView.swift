//
//  CanvasView.swift
//  contest02
//
//  Created by Elaine on 2020-05-09.
//  Copyright © 2020 ethan. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    
    override func draw(_ rect: CGRect) {
        contest2()
    }
    func contest2()  {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 150, y: 500))
        pencil.addLine(to: CGPoint(x: 550, y: 500))
        pencil.stroke()
        
        
        let dot = UIBezierPath(arcCenter: CGPoint(x: 200, y: 300), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot.fill()
        let dot2 = UIBezierPath(arcCenter: CGPoint(x: 450, y: 300), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot2.fill()
        #colorLiteral(red: 0.9297945205, green: 0.6243325418, blue: 0.8457076168, alpha: 1).setStroke()
        #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1).setFill()
        let dot20 = UIBezierPath(arcCenter: CGPoint(x: 215, y: 175), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot20.fill()
        
        let dot19 = UIBezierPath(arcCenter: CGPoint(x: 205, y: 435), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot19.fill()
        
        let dot18 = UIBezierPath(arcCenter: CGPoint(x: 290, y: 145), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot18.fill()
        
        let dot17 = UIBezierPath(arcCenter: CGPoint(x: 290, y: 455), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot17.fill()
        
        let dot16 = UIBezierPath(arcCenter: CGPoint(x: 345, y: 145), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot16.fill()
        
        let dot15 = UIBezierPath(arcCenter: CGPoint(x: 345, y: 455), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot15.fill()
        
        let dot14 = UIBezierPath(arcCenter: CGPoint(x: 375, y: 145), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot14.fill()
        
        let dot13 = UIBezierPath(arcCenter: CGPoint(x: 375, y: 455), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot13.fill()
        
        let dot12 = UIBezierPath(arcCenter: CGPoint(x: 405, y: 155), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot12.fill()
        
        let dot11 = UIBezierPath(arcCenter: CGPoint(x: 405, y: 445), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot11.fill()
        
        let dot10 = UIBezierPath(arcCenter: CGPoint(x: 500, y: 225), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot10.fill()
        
        let dot9 = UIBezierPath(arcCenter: CGPoint(x: 500, y: 375), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot9.fill()
        
        let dot8 = UIBezierPath(arcCenter: CGPoint(x: 440, y: 170), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot8.fill()
        
        let dot7 = UIBezierPath(arcCenter: CGPoint(x: 440, y: 430), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot7.fill()
        
        let dot6 = UIBezierPath(arcCenter: CGPoint(x: 325, y: 145), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot6.fill()
        
        let dot5 = UIBezierPath(arcCenter: CGPoint(x: 325, y: 455), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot5.fill()
        
        let dot4 = UIBezierPath(arcCenter: CGPoint(x: 230, y: 150), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot4.fill()
        
        let dot3 = UIBezierPath(arcCenter: CGPoint(x: 230, y: 450), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot3.fill()
        
        let dot02 = UIBezierPath(arcCenter: CGPoint(x: 510, y: 220), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot02.fill()
        
        let dot01 = UIBezierPath(arcCenter: CGPoint(x: 410, y: 380), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot01.fill()
       

    }
    
}
