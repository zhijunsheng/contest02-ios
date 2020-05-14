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
    func question1() {
        let pen = UIBezierPath()
        let parallel = UIBezierPath()
        let compass = UIBezierPath()
        let answer = UIBezierPath()
        
        pen.move(to: CGPoint(x: 100, y: 650))
        pen.addLine(to: CGPoint(x: 600, y: 650))
        
        pen.move(to: CGPoint(x: 320, y: 540))
        pen.addLine(to: CGPoint(x: 340, y: 560))
        pen.move(to: CGPoint(x: 340, y: 540))
        pen.addLine(to: CGPoint(x: 320, y: 560))
        
        pen.lineWidth = 3
        pen.stroke()
        
        #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setStroke()
        
        // parallel line
        parallel.move(to: CGPoint(x: 175, y: 520))
        parallel.addLine(to: CGPoint(x: 600, y: 520))
        
        parallel.lineWidth = 2
        parallel.stroke()
        
        compass.addArc(withCenter: CGPoint(x: 330, y: 550), radius: 145, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        compass.stroke()
        
        mark(x: 187, y: 520)
    }
    
    func mark(x: CGFloat, y: CGFloat) {
        let pen = UIBezierPath()
        pen.move(to: CGPoint(x: x - 10, y: y - 10))
        pen.addLine(to: CGPoint(x: x + 10, y: y + 10))
        
        pen.move(to: CGPoint(x: x + 10, y: y - 10))
        pen.addLine(to: CGPoint(x: x - 10, y: y + 10))
        
        #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setStroke()
        pen.stroke()
    }
    
    func drawCross(x: CGFloat, y: CGFloat) {
        let ruler = UIBezierPath()
        ruler.move(to: CGPoint(x: x, y: y - 75))
        ruler.addLine(to: CGPoint(x: x, y: y + 75))
        ruler.move(to: CGPoint(x: x - 75, y: y))
        ruler.addLine(to: CGPoint(x: x + 75, y: y))
        
        #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setStroke()
        ruler.stroke()
    }
    
}



