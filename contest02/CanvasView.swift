//
//  CanvasView.swift
//  Contest02
//
//  Created by Grace Huang on 5/14/20.
//  Copyright © 2020 Grace Huang. All rights reserved.
//

import UIKit

class CanvasView: UIView {

    
    override func draw(_ rect: CGRect) {
        question1()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let first = touches.first!
        let fingerLocation = first.location(in: self)
        print("\(fingerLocation.x), \(fingerLocation.y)")
    }
    
    
    func question1() {
        let pen = UIBezierPath()
        let parallel = UIBezierPath()
        let compass = UIBezierPath()
        let distance: CGFloat = 30

        pen.move(to: CGPoint(x: 0, y: 650))
        pen.addLine(to: CGPoint(x: 1000, y: 650))
        
        pen.move(to: CGPoint(x: 320, y: 540))
        pen.addLine(to: CGPoint(x: 340, y: 560))
        pen.move(to: CGPoint(x: 340, y: 540))
        pen.addLine(to: CGPoint(x: 320, y: 560))
        
        pen.lineWidth = 3
        pen.stroke()
        
        #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setStroke()
        
        
        for i in 0..<7 {
//        let i = 1
        
            parallel.move(to: CGPoint(x: 0, y: 520 - distance * CGFloat(i)))
            parallel.addLine(to: CGPoint(x: 1000, y: 520 - distance * CGFloat(i)))

            parallel.lineWidth = 1
            parallel.stroke()

            compass.addArc(withCenter: CGPoint(x: 330, y: 550), radius: 145 + distance * CGFloat(i), startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
            compass.stroke()

            let c: CGFloat = 145 + distance * CGFloat(i)
            let a: CGFloat = distance * CGFloat(i + 1)
            let b: CGFloat = sqrt(c * c - a * a)

            mark(x: 330 - b, y: 520 - distance * CGFloat(i))
            mark(x: 330 + b, y: 520 - distance * CGFloat(i))
        }
        
        
    }
    
    func mark(x: CGFloat, y: CGFloat) {
        let pen = UIBezierPath()
        pen.move(to: CGPoint(x: x - 10, y: y - 10))
        pen.addLine(to: CGPoint(x: x + 10, y: y + 10))
        
        pen.move(to: CGPoint(x: x + 10, y: y - 10))
        pen.addLine(to: CGPoint(x: x - 10, y: y + 10))
        
        #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setStroke()
        pen.lineWidth = 3
        pen.stroke()
    }
    
    
}



