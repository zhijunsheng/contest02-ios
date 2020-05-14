import UIKit

class CanvasView: UIView {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let first = touches.first!
        let finger = first.location(in: self)
        print("\(finger.x), \(finger.y)")
        
    }
    
    override func draw(_ rect: CGRect) {
        drawLine(fromX: 150, fromY: 100, toX: 550, toY: 100, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawLine(fromX: 250, fromY: 340, toX: 270, toY: 360, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawLine(fromX: 270, fromY: 340, toX: 250, toY: 360, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawLine(fromX: 500, fromY: 340, toX: 520, toY: 360, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawLine(fromX: 520, fromY: 340, toX: 500, toY: 360, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawLine(fromX: 150, fromY: 90, toX: 150, toY: 110, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawLine(fromX: 550, fromY: 90, toX: 550, toY: 110, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        
        drawCircle(x: 260, y: 350, radius: 150, color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        drawCircle(x: 510, y: 350, radius: 250, color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        drawCircle(x: 260, y: 350, radius: 170, color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        drawCircle(x: 510, y: 350, radius: 230, color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
    }
    
    func drawLine(fromX: CGFloat, fromY: CGFloat, toX: CGFloat, toY: CGFloat, color: UIColor) {
        let penicl = UIBezierPath()
        penicl.move(to: CGPoint(x: fromX, y: fromY))
        penicl.addLine(to: CGPoint(x: toX, y: toY))
        
        color.setStroke()
        penicl.stroke()
    }
    
    func drawCircle(x: CGFloat, y: CGFloat, radius: CGFloat, color: UIColor) {
        let circle = UIBezierPath(arcCenter: CGPoint(x: x, y: y), radius: radius, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        color.setStroke()
        circle.stroke()
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
