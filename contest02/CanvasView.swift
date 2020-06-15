//
//  CanvasView.swift
//  Contest02
//
//  Created by Grace Huang on 5/14/20.
//  Copyright © 2020 Grace Huang. All rights reserved.
//

import UIKit

class CanvasView: UIView {

    var flag: Problems = Problems.problem1
    var g: CGFloat = 100
    
    override func draw(_ rect: CGRect) {
        switch flag {
        case .problem1:
            question1()
        case .problem2:
            question2()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let first = touches.first!
        let fingerLocation = first.location(in: self)
        print("\(fingerLocation.x), \(fingerLocation.y)")
    }
    
    func question1() {
        let pen = UIBezierPath()
        let distance: CGFloat = 3

        pen.move(to: CGPoint(x: 0, y: 650))
        pen.addLine(to: CGPoint(x: 1000, y: 650))
        
        pen.move(to: CGPoint(x: 320, y: 540))
        pen.addLine(to: CGPoint(x: 340, y: 560))
        pen.move(to: CGPoint(x: 340, y: 540))
        pen.addLine(to: CGPoint(x: 320, y: 560))
        
        pen.lineWidth = 3
        pen.stroke()
        
        #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setStroke()
        
        for i in 0..<150 {
            let a: CGFloat = distance * CGFloat(i) - g / 2
            let c: CGFloat = g + a
            let b: CGFloat = sqrt(c * c - a * a)

            dot(x: 330 - b, y: 550 - a, color: .blue)
            dot(x: 330 + b, y: 550 - a, color: .blue)
        }
    }
    
    func question2() {
        let pen = UIBezierPath()
        let a: CGFloat = 150
        let b: CGFloat = 100
        
        mark(x: 250, y: 500, color: .blue)
        mark(x: 450, y: 500, color: .blue)
        
        pen.move(to: CGPoint(x: 100, y: 100))
        pen.addLine(to: CGPoint(x: 400, y: 100))
        
        #colorLiteral(red: 0.1037014052, green: 0.04392455518, blue: 0.04877308756, alpha: 1).setStroke()
        pen.stroke()
        
        for i in 0..<18 {
            let x: CGFloat = CGFloat(i) * 18
            let m: CGFloat = (a * a - x * b) / a
            let n: CGFloat = x - b
            let y: CGFloat = sqrt(m * m - n * n)
            
            mark(x: 350 + x, y: 500 - y, color: .red)
            mark(x: 350 - x, y: 500 - y, color: .red)
            
            mark(x: 350 + x, y: 500 + y, color: .red)
            mark(x: 350 - x, y: 500 + y, color: .red)
        }
        
        mark(x: 500, y: 500, color: .red)
        mark(x: 200, y: 500, color: .red)
    }

    func mark(x: CGFloat, y: CGFloat, color: UIColor) {
        let pen = UIBezierPath()
        pen.move(to: CGPoint(x: x - 10, y: y - 10))
        pen.addLine(to: CGPoint(x: x + 10, y: y + 10))
        
        pen.move(to: CGPoint(x: x + 10, y: y - 10))
        pen.addLine(to: CGPoint(x: x - 10, y: y + 10))
        
        color.setStroke()
        pen.lineWidth = 3
        pen.stroke()
    }
    
    func dot(x: CGFloat, y: CGFloat, color: UIColor) {
        let pen = UIBezierPath()
        
        pen.addArc(withCenter: CGPoint(x: x, y: y), radius: 3, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        color.setFill()
        pen.fill()
    }
}



