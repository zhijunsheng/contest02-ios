import UIKit

class CanvasView: UIView {
    
    override func draw(_ rect: CGRect) {
        let pen = UIBezierPath()
        pen.move(to: CGPoint(x: 150, y: 100))
        pen.addLine(to: CGPoint(x: 550, y: 100))
        
        pen.move(to: CGPoint(x: 250, y: 340))
        pen.addLine(to: CGPoint(x: 270, y: 360))
        
        pen.move(to: CGPoint(x: 270, y: 340))
        pen.addLine(to: CGPoint(x: 250, y: 360))
        
        pen.move(to: CGPoint(x: 500, y: 340))
        pen.addLine(to: CGPoint(x: 520, y: 360))
        
        pen.move(to: CGPoint(x: 520, y: 340))
        pen.addLine(to: CGPoint(x: 500, y: 360))

        pen.stroke()
        
        let penicl = UIBezierPath()
        penicl.move(to: CGPoint(x: 300, y: 90))
        penicl.addLine(to: CGPoint(x: 300, y: 110))
        
        penicl.stroke()
        
        let circle = UIBezierPath(arcCenter: CGPoint(x: 260, y: 350), radius: 150, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        circle.stroke()
        
        let circle2 = UIBezierPath(arcCenter: CGPoint(x: 510, y: 350), radius: 250, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        circle2.stroke()
        
        drawCrosshair(x: 305, y: 206)
        
    }
    
    func drawCrosshair(x: CGFloat, y: CGFloat) {
        let cross = UIBezierPath()
        cross.move(to: CGPoint(x: x - 30, y: y))
        cross.addLine(to: CGPoint(x: x + 30, y: y))

        cross.move(to: CGPoint(x: x, y: y - 30))
        cross.addLine(to: CGPoint(x: x, y: y + 30))

        #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1).setStroke()
        cross.stroke()
    }
}
