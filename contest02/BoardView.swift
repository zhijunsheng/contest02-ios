import UIKit

class BoardView: UIView {

    override func draw(_ rect: CGRect) {
        // Drawing code
         challenge8()
//        let p1 = UIBezierPath()
//        p1.move(to: CGPoint(x: 38, y: 234))
//        p1.addLine(to: CGPoint(x: 238, y: 434))
//        p1.stroke()
    }
    
    private func drawLetter(_ letter: String, x: CGFloat, y: CGFloat, color: UIColor, width: CGFloat, height: CGFloat, fontSize: CGFloat, family: String) {
        
        if let font = UIFont(name: family, size: fontSize) {
            let letterParagrahStyle = NSMutableParagraphStyle()
            letterParagrahStyle.alignment = .center
            let attrStr = NSAttributedString(string: letter, attributes: [.font: font, .foregroundColor: color, .paragraphStyle: letterParagrahStyle])
            attrStr.draw(in: CGRect(x: x, y: y, width: width, height: height))
        } else {
            let letterParagrahStyle = NSMutableParagraphStyle()
            letterParagrahStyle.alignment = .center
            let attrStr = NSAttributedString(string: letter, attributes: [.font: UIFont.systemFont(ofSize: fontSize), .foregroundColor: color, .paragraphStyle: letterParagrahStyle])
            attrStr.draw(in: CGRect(x: x, y: y, width: width, height: height))
        }
    }
    
    func challenge8() {
        drawLetter("7", x: 100, y: 614, color: .blue, width: 40, height: 125, fontSize: 50, family: "Brush Script MT")
        drawLetter("1", x: 200, y: 614, color:  .blue, width: 40, height: 125, fontSize: 50, family: "Brush Script MT")
        
        let rulerpath = UIBezierPath()
        rulerpath.move(to: CGPoint(x: 0, y: 564))
        rulerpath.addLine(to: CGPoint(x: 728, y: 564))
        rulerpath.stroke()
        
        let compassPath = UIBezierPath(arcCenter: CGPoint(x: 250, y: 564), radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        UIColor.blue.setFill()
        compassPath.fill()
        UIColor.blue.setStroke()
        compassPath.stroke()
        
        let compassPath1 = UIBezierPath(arcCenter: CGPoint(x: 478, y: 564), radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        UIColor.blue.setFill()
        compassPath1.fill()
        UIColor.blue.setStroke()
        compassPath1.stroke()
        
        let rulerLengend = UIBezierPath()
        rulerLengend.move(to: CGPoint(x: 0, y: bounds.height - 50))
        rulerLengend.addLine(to: CGPoint(x: bounds.width, y: bounds.height - 50))
        
        rulerLengend.move(to: CGPoint(x: 314, y: 514))
        rulerLengend.addLine(to: CGPoint(x: 414, y: 614))
        
        rulerLengend.move(to: CGPoint(x: 314, y: 614))
        rulerLengend.addLine(to: CGPoint(x: 414, y: 514))
        rulerLengend.lineWidth = 5
        UIColor.black.setStroke()
        rulerLengend.stroke()
        
        for i in 0..<10 {
            rulerpath.move(to: CGPoint(x: 0, y: 564 - i * 50))
            rulerpath.addLine(to: CGPoint(x: 728, y: 564 - i * 50))
            rulerpath.stroke()
            
            let compassPath3 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 564), radius: CGFloat(678 - 564 + i * 50), startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
            compassPath3.stroke()
        }
        
        let compassPath2 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 621), radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        UIColor.blue.setFill()
        compassPath2.fill()
        UIColor.blue.setStroke()
        compassPath2.stroke()
        
        let answerPointsBox: [CGPoint] = [
            CGPoint(x: 524.5, y: 517),
            CGPoint(x: 551, y: 469.5),
            CGPoint(x: 584, y: 419),
            CGPoint(x: 610.5, y: 365.5),
            CGPoint(x: 125.5, y: 365.5),
            CGPoint(x: 149, y: 419),
            CGPoint(x: 174, y: 469),
            CGPoint(x: 210, y: 517),
            CGPoint(x: 627, y: 313.5),
            CGPoint(x: 651, y: 268),
            CGPoint(x: 669, y: 219),
            CGPoint(x: 685, y: 167),
            CGPoint(x: 702.5, y: 116),
            CGPoint(x: 102.5, y: 313.5),
            CGPoint(x: 90.5, y: 268),
            CGPoint(x: 66.5, y: 219),
            CGPoint(x: 50, y: 167),
            CGPoint(x: 25, y: 110)
        ]
        
        for point in answerPointsBox {
            let compassPath3 = UIBezierPath(arcCenter: point, radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
            compassPath3.fill()
            compassPath3.stroke()
        }
    }
}
