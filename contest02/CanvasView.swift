//
//  CanvasView.swift
//  Contest02
//
//  Created by Grace Huang on 5/14/20.
//  Copyright © 2020 Grace Huang. All rights reserved.
//

import UIKit

class CanvasView: UIView {

    var flag: Problems = Problems.problem2

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
        
        
        for i in -4..<13 {
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
    
    func question2() {
        let pen = UIBezierPath()
        let compass = UIBezierPath()
        let compass2 = UIBezierPath()
        
        mark(x: 250, y: 500)
        mark(x: 450, y: 500)
        
        pen.move(to: CGPoint(x: 100, y: 100))
        pen.addLine(to: CGPoint(x: 400, y: 100))
        
        pen.move(to: CGPoint(x: 200, y: 95))
        pen.addLine(to: CGPoint(x: 200, y: 105))
        
        #colorLiteral(red: 0.1037014052, green: 0.04392455518, blue: 0.04877308756, alpha: 1).setStroke()
        pen.stroke()
        
        // 25
        compass.addArc(withCenter: CGPoint(x: 250, y: 500), radius: 100, startAngle:  0 * CGFloat.pi, endAngle:  2 * CGFloat.pi, clockwise: true)
        
        compass.addArc(withCenter: CGPoint(x: 450, y: 500), radius: 200, startAngle:  0 * CGFloat.pi, endAngle:  2 * CGFloat.pi, clockwise: true)
        
        #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setStroke()
        compass.stroke()
        mark(x: 275, y: 405)
        mark(x: 275, y: 598)
        
        mark(x: 425, y: 405)
        mark(x: 425, y: 598)
        
        //
        compass2.addArc(withCenter: CGPoint(x: 250, y: 500), radius: 75, startAngle:  0 * CGFloat.pi, endAngle:  2 * CGFloat.pi, clockwise: true)
        
        compass2.addArc(withCenter: CGPoint(x: 450, y: 500), radius: 225, startAngle:  0 * CGFloat.pi, endAngle:  2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1).setStroke()
        compass2.stroke()
    
        mark(x: 464, y: 430)
        mark(x: 464, y: 580)
        
        mark(x: 240, y: 430)
        mark(x: 240, y: 580)
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



