import UIKit
class CanvasView: UIView {
    override func draw(_ rect: CGRect) {
        option2n1()
        option2n2()
        option2n3()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let first = touches.first!
        let fingerLocation = first.location(in: self)
        print("\(fingerLocation.x), \(fingerLocation.y)")
    }
    func option2n1() {
        let line1 = UIBezierPath()
        line1.move(to: CGPoint(x: 182, y: 364))
        line1.addLine(to: CGPoint(x: 546, y: 364))
        line1.lineWidth = 10
        line1.stroke()
        
        let point1 = UIBezierPath(arcCenter: CGPoint(x: 272, y: 264), radius: 10, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        point1.lineWidth = 10
        point1.stroke()
        point1.fill()
        
        let point2 = UIBezierPath(arcCenter: CGPoint(x: 456, y: 264), radius: 10, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        point2.lineWidth = 10
        point2.stroke()
        point2.fill()
    }
    func option2n2() {
        let line2 = UIBezierPath()
        line2.move(to: CGPoint(x: 354, y: 344))
        line2.addLine(to: CGPoint(x: 354, y: 384))
        line2.lineWidth = 10
        #colorLiteral(red: 0.3398539424, green: 0.6224563122, blue: 0.168690294, alpha: 1).setStroke()
        line2.stroke()
        
        let line3 = UIBezierPath()
        line3.move(to: CGPoint(x: 374, y: 344))
        line3.addLine(to: CGPoint(x: 374, y: 384))
        line3.lineWidth = 10
        #colorLiteral(red: 0.3398539424, green: 0.6224563122, blue: 0.168690294, alpha: 1).setStroke()
        line3.stroke()
        
        let line4 = UIBezierPath()
        line4.move(to: CGPoint(x: 394, y: 344))
        line4.addLine(to: CGPoint(x: 394, y: 384))
        line4.lineWidth = 10
        #colorLiteral(red: 0.3398539424, green: 0.6224563122, blue: 0.168690294, alpha: 1).setStroke()
        line4.stroke()
        
        let line5 = UIBezierPath()
        line5.move(to: CGPoint(x: 334, y: 344))
        line5.addLine(to: CGPoint(x: 334, y: 384))
        line5.lineWidth = 10
        #colorLiteral(red: 0.3398539424, green: 0.6224563122, blue: 0.168690294, alpha: 1).setStroke()
        line5.stroke()
        
        let line6 = UIBezierPath()
        line6.move(to: CGPoint(x: 314, y: 344))
        line6.addLine(to: CGPoint(x: 314, y: 384))
        line6.lineWidth = 10
        #colorLiteral(red: 0.3398539424, green: 0.6224563122, blue: 0.168690294, alpha: 1).setStroke()
        line6.stroke()
        
        let line7 = UIBezierPath()
        line7.move(to: CGPoint(x: 414, y: 344))
        line7.addLine(to: CGPoint(x: 414, y: 384))
        line7.lineWidth = 10
        #colorLiteral(red: 0.3398539424, green: 0.6224563122, blue: 0.168690294, alpha: 1).setStroke()
        line7.stroke()
        
        let line8 = UIBezierPath()
        line8.move(to: CGPoint(x: 294, y: 344))
        line8.addLine(to: CGPoint(x: 294, y: 384))
        line8.lineWidth = 10
        #colorLiteral(red: 0.3398539424, green: 0.6224563122, blue: 0.168690294, alpha: 1).setStroke()
        line8.stroke()
        
        let line9 = UIBezierPath()
        line9.move(to: CGPoint(x: 434, y: 344))
        line9.addLine(to: CGPoint(x: 434, y: 384))
        line9.lineWidth = 10
        #colorLiteral(red: 0.3398539424, green: 0.6224563122, blue: 0.168690294, alpha: 1).setStroke()
        line9.stroke()
    }
    func option2n3() {
        let answerLine1 = UIBezierPath()
        answerLine1.move(to: CGPoint(x: 345, y: 110))
        answerLine1.addLine(to: CGPoint(x: 272, y: 264))
        answerLine1.move(to: CGPoint(x: 345, y: 110))
        answerLine1.addLine(to: CGPoint(x: 456, y: 264))
        answerLine1.lineWidth = 10
        #colorLiteral(red: 0.745601356, green: 0.2564220428, blue: 0.6603657603, alpha: 1).setStroke()
        answerLine1.stroke()
        
        let answerLine2 = UIBezierPath()
        answerLine2.move(to: CGPoint(x: 389, y: 223 / 2))
        answerLine2.addLine(to: CGPoint(x: 272, y: 264))
        answerLine2.move(to: CGPoint(x: 389, y: 223 / 2))
        answerLine2.addLine(to: CGPoint(x: 456, y: 264))
        answerLine2.lineWidth = 10
        #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1).setStroke()
        answerLine2.stroke()
        
        let answerLine3 = UIBezierPath()
        answerLine3.move(to: CGPoint(x: 849 / 2, y: 243 / 2))
        answerLine3.addLine(to: CGPoint(x: 272, y: 264))
        answerLine3.move(to: CGPoint(x: 849 / 2, y: 243 / 2))
        answerLine3.addLine(to: CGPoint(x: 456, y: 264))
        answerLine3.lineWidth = 10
        #colorLiteral(red: 0.9686274529, green: 0.4020322542, blue: 0.4454368137, alpha: 1).setStroke()
        answerLine3.stroke()
        
        let answerLine4 = UIBezierPath()
        answerLine4.move(to: CGPoint(x: 299.5, y: 243 / 2))
        answerLine4.addLine(to: CGPoint(x: 272, y: 264))
        answerLine4.move(to: CGPoint(x: 299.5, y: 243 / 2))
        answerLine4.addLine(to: CGPoint(x: 456, y: 264))
        answerLine4.lineWidth = 10
        #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1).setStroke()
        answerLine4.stroke()
        
        let answerLine5 = UIBezierPath()
        answerLine5.move(to: CGPoint(x: 264.5, y: 135))
        answerLine5.addLine(to: CGPoint(x: 272, y: 264))
        answerLine5.move(to: CGPoint(x: 264.5, y: 135))
        answerLine5.addLine(to: CGPoint(x: 456, y: 264))
        answerLine5.lineWidth = 10
        #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1).setStroke()
        answerLine5.stroke()
        
        let answerLine6 = UIBezierPath()
        answerLine6.move(to: CGPoint(x: 463.5, y: 135))
        answerLine6.addLine(to: CGPoint(x: 272, y: 264))
        answerLine6.move(to: CGPoint(x: 463.5, y: 135))
        answerLine6.addLine(to: CGPoint(x: 456, y: 264))
        answerLine6.lineWidth = 10
        #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1).setStroke()
        answerLine6.stroke()
        
        let answerLine7 = UIBezierPath()
        answerLine7.move(to: CGPoint(x: 211, y: 189))
        answerLine7.addLine(to: CGPoint(x: 272, y: 264))
        answerLine7.move(to: CGPoint(x: 211, y: 189))
        answerLine7.addLine(to: CGPoint(x: 456, y: 264))
        answerLine7.lineWidth = 10
        #colorLiteral(red: 0.7792270349, green: 1, blue: 0.7761113487, alpha: 1).setStroke()
        answerLine7.stroke()
        
        let answerLine8 = UIBezierPath()
        answerLine8.move(to: CGPoint(x: 517, y: 189))
        answerLine8.addLine(to: CGPoint(x: 272, y: 264))
        answerLine8.move(to: CGPoint(x: 517, y: 189))
        answerLine8.addLine(to: CGPoint(x: 456, y: 264))
        answerLine8.lineWidth = 10
        #colorLiteral(red: 0, green: 0.4094622462, blue: 0.02624202768, alpha: 1).setStroke()
        answerLine8.stroke()
    }
}
