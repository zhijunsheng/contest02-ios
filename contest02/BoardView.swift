//
//  BoardView.swift
//  contest02
//
//  Created by Angie Yan on 2020-05-09.
//  Copyright © 2020 ethan. All rights reserved.
//

import UIKit

class BoardView: UIView {
    
    var flag = 1


    override func draw(_ rect: CGRect) {
        if flag == 1 {
            drawProblem1()
        } else if flag == 2 {
            drawProblem2()
        }
    }
    
    func drawProblem1() {
        let line = UIBezierPath()
        line.move(to: CGPoint(x: 150, y: 650))
        line.addLine(to: CGPoint(x: 550, y: 650))
        line.lineWidth = 3
        line.stroke()
        
        UIBezierPath(arcCenter: CGPoint(x: 360, y: 550), radius: 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
       
        #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).setFill()
        UIBezierPath(arcCenter: CGPoint(x: 360 + 100, y: 550), radius: 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 360 - 100, y: 550), radius: 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 360, y: 600), radius: 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 284, y: 570.5), radius: 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 436, y: 570), radius: 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 242, y: 530.5), radius: 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 477.5, y: 530), radius: 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 219, y: 498.5), radius: 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 501.5, y: 499.5), radius: 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 205, y: 477.5), radius: 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 515, y: 478), radius: 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 186, y: 449.5), radius: 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 532.5, y: 449), radius: 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 315, y: 590), radius: 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 405.5, y: 589), radius: 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 171, y: 420), radius: 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 549, y: 419.5), radius: 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()

        UIBezierPath(arcCenter: CGPoint(x: 159, y: 399.5), radius: 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 560.5, y: 400), radius: 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 150, y: 380), radius: 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        
        UIBezierPath(arcCenter: CGPoint(x: 569.5, y: 379.5), radius: 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        
        let parallel = UIBezierPath()
        parallel.move(to: CGPoint(x: 100, y: 380))
        parallel.addLine(to: CGPoint(x: 620, y: 380))
        parallel.stroke()
        
        UIBezierPath(arcCenter: CGPoint(x: 360, y: 550), radius: 270, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).stroke()
        
    }
    
    
    func drawProblem2() {
        let line = UIBezierPath()
        line.move(to: CGPoint(x: 200, y: 100))
        line.addLine(to: CGPoint(x: 450, y: 100))
        line.stroke()
        
        let startPoint1 = UIBezierPath(arcCenter: CGPoint(x: 250, y: 400), radius: 3, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        startPoint1.fill()
        
        let startPoint2 = UIBezierPath(arcCenter: CGPoint(x: 450, y: 400), radius: 3, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        startPoint2.fill()
        
        let answerPoints: [CGPoint] = [
            CGPoint(x: 382, y: 328.5),
            CGPoint(x: 257.5, y: 352.5),
            CGPoint(x: 355.5, y: 326.5),
            CGPoint(x: 419, y: 339),
            CGPoint(x: 419, y: 464),
            CGPoint(x: 295, y: 333),
            CGPoint(x: 294.5, y: 467),
            CGPoint(x: 257, y: 449.5),
            CGPoint(x: 269.5, y: 343),
            CGPoint(x: 270.5, y: 458),
            CGPoint(x: 443.5, y: 352),
            CGPoint(x: 443.5, y: 450),
            CGPoint(x: 318.5, y: 327.5),
            CGPoint(x: 319, y: 472.5),
            CGPoint(x: 381, y: 473),
            CGPoint(x: 350, y: 476),
            CGPoint(x: 475, y: 400),
            CGPoint(x: 225, y: 400),
            CGPoint(x: 233.5, y: 374),
            CGPoint(x: 234, y: 427),
            CGPoint(x: 466, y: 374),
            CGPoint(x: 467, y: 424.5)
        ]
        
        for point in answerPoints {
            let point1 = UIBezierPath(arcCenter: point, radius: 6, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
            #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).setFill()
            point1.fill()
        }
        
        let arc1 = UIBezierPath(arcCenter: CGPoint(x: 250, y: 400), radius: 225 - 7, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        arc1.stroke()
        
        let arc2 = UIBezierPath(arcCenter: CGPoint(x: 450, y: 400), radius: 25 + 7, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        arc2.stroke()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         let first = touches.first!
         let fingerLocation = first.location(in: self)
         print("\(fingerLocation.x)       \(fingerLocation.y)")
     }
    

}

