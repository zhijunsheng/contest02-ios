import UIKit

class BoardView: UIView {
    var flag: Int = 2
    
    
    override func draw(_ rect: CGRect) {
        // Drawing code
         
//        let p1 = UIBezierPath()
//        p1.move(to: CGPoint(x: 38, y: 234))
//        p1.addLine(to: CGPoint(x: 238, y: 434))
//        p1.stroke()
        if flag == 1 {
            challenge8()
        } else if flag == 2 {
            challenge9()
        } else {
            
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch = touches.first!
        let touchLocation = touch.location(in: self)
        print("\(touchLocation.x), \(touchLocation.y)")
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
        
        let answerPointsBox: [CGPoint] = [
            CGPoint(x: 702.5, y: 116),
            CGPoint(x: 685, y: 167),
            CGPoint(x: 669, y: 219),
            CGPoint(x: 651, y: 268),
            CGPoint(x: 627, y: 313.5),
            CGPoint(x: 610.5, y: 365.5),
            CGPoint(x: 584, y: 419),
            CGPoint(x: 551, y: 469.5),
            CGPoint(x: 524.5, y: 517),
            CGPoint(x: 478, y: 564),
            CGPoint(x: 364, y: 621),
            CGPoint(x: 250, y: 564),
            CGPoint(x: 210, y: 517),
            CGPoint(x: 174, y: 469),
            CGPoint(x: 149, y: 419),
            CGPoint(x: 125.5, y: 365.5),
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
        
        let bowl = UIBezierPath()
        for i in 0..<answerPointsBox.count - 1 {
            bowl.move(to: answerPointsBox[i])
            bowl.addLine(to: answerPointsBox[i + 1])
            bowl.stroke()
        }
    }
    
    func challenge9() {
        let rulerLegend = UIBezierPath()
        rulerLegend.move(to: CGPoint(x: 314, y: 514))
        rulerLegend.addLine(to: CGPoint(x: 414, y: 614))
        
        rulerLegend.move(to: CGPoint(x: 314, y: 614))
        rulerLegend.addLine(to: CGPoint(x: 414, y: 514))
        
        rulerLegend.move(to: CGPoint(x: 314, y: 214))
        rulerLegend.addLine(to: CGPoint(x: 414, y: 314))
        
        rulerLegend.move(to: CGPoint(x: 314, y: 314))
        rulerLegend.addLine(to: CGPoint(x: 414, y: 214))
        
        rulerLegend.move(to: CGPoint(x: 121.5, y: 678))
        rulerLegend.addLine(to: CGPoint(x: bounds.width - 121.5, y: 678))
        rulerLegend.lineWidth = 6.25
        rulerLegend.stroke()
        
        let lineLength: CGFloat = 485
        
        let helperPoint = UIBezierPath(arcCenter: CGPoint(x: lineLength / 2 + 121.5, y: 678), radius: 10, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.07707575709, green: 0.1131002083, blue: 0.4635964632, alpha: 1).setFill()
        helperPoint.fill()
        
        let trianglePath1_1 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 564), radius: lineLength / 2, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        trianglePath1_1.stroke()
        
        let trianglePath1_2 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 264), radius: lineLength / 2, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        trianglePath1_2.stroke()
        
        let helperPoint2 = UIBezierPath(arcCenter: CGPoint(x: lineLength / 2 + 171.5, y: 678), radius: 10, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.07707575709, green: 0.1131002083, blue: 0.4635964632, alpha: 1).setFill()
        helperPoint2.fill()
        
        let trianglePath2_1 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 564), radius: lineLength / 2 + 50, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        trianglePath2_1.stroke()
        
        let trianglePath2_2 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 264), radius: lineLength / 2 - 50, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        trianglePath2_2.stroke()
        
        let helperPoint3 = UIBezierPath(arcCenter: CGPoint(x: lineLength / 2 + 221.5, y: 678), radius: 10, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.07707575709, green: 0.1131002083, blue: 0.4635964632, alpha: 1).setFill()
        helperPoint3.fill()
        
        let trianglePath3_1 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 564), radius: lineLength / 2 + 100, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        trianglePath3_1.stroke()
        
        let trianglePath3_2 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 264), radius: lineLength / 2 - 100, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        trianglePath3_2.stroke()
        
        let helperPoint4 = UIBezierPath(arcCenter: CGPoint(x: lineLength / 2 + 271.5, y: 678), radius: 10, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.07707575709, green: 0.1131002083, blue: 0.4635964632, alpha: 1).setFill()
        helperPoint4.fill()
        
        let trianglePath4_1 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 564), radius: lineLength / 2 + 150, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        trianglePath4_1.stroke()
        
        let trianglePath4_2 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 264), radius: lineLength / 2 - 150, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        trianglePath4_2.stroke()
        
        let helperPoint5 = UIBezierPath(arcCenter: CGPoint(x: lineLength / 2 + 71.5, y: 678), radius: 10, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.07707575709, green: 0.1131002083, blue: 0.4635964632, alpha: 1).setFill()
        helperPoint5.fill()
        
        let trianglePath5_1 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 564), radius: lineLength / 2 - 50, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        trianglePath5_1.stroke()
        
        let trianglePath5_2 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 264), radius: lineLength / 2 + 50, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        trianglePath5_2.stroke()
        
        let helperPoint6 = UIBezierPath(arcCenter: CGPoint(x: lineLength / 2 + 21.5, y: 678), radius: 10, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.07707575709, green: 0.1131002083, blue: 0.4635964632, alpha: 1).setFill()
        helperPoint6.fill()
        
        let trianglePath6_1 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 564), radius: lineLength / 2 - 100, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        trianglePath6_1.stroke()
        
        let trianglePath6_2 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 264), radius: lineLength / 2 + 100, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        trianglePath6_2.stroke()
        
        let helperPoint7 = UIBezierPath(arcCenter: CGPoint(x: lineLength / 2 - 28.5, y: 678), radius: 10, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.07707575709, green: 0.1131002083, blue: 0.4635964632, alpha: 1).setFill()
        helperPoint7.fill()
    }
}
