import UIKit

class CanvasView: UIView {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let first = touches.first!
        let finger = first.location(in: self)
        print("\(finger.x), \(finger.y)")
    }
    
     var figureIndex = 0
    
    override func draw(_ rect: CGRect) {
        if figureIndex == 0 {
            drawProblem1()
        }
        
        if figureIndex == 1 {
            drawProblem2()
        }
    }
    
    func drawProblem1() {
        drawLine(fromX: 100, fromY: 650, toX: 650, toY: 650, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawLine(fromX: 400, fromY: 500, toX: 420, toY: 520, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawLine(fromX: 400, fromY: 520, toX: 420, toY: 500, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        
        drawLine(fromX: 235, fromY: 470, toX: 410, toY: 510, color: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
        drawLine(fromX: 235, fromY: 470, toX: 235, toY: 650, color: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
        
        drawLine(fromX: 587, fromY: 470, toX: 410, toY: 510, color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        drawLine(fromX: 587, fromY: 470, toX: 587, toY: 650, color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        
        drawLine(fromX: 10, fromY: 390, toX: 800, toY: 390, color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        
        drawLine(fromX: 219, fromY: 453, toX: 410, toY: 510, color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        drawLine(fromX: 219, fromY: 453, toX: 219, toY: 650, color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        
        drawLine(fromX: 602, fromY: 453, toX: 410, toY: 510, color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        drawLine(fromX: 602, fromY: 453, toX: 602, toY: 650, color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        
        drawLine(fromX: 205, fromY: 432, toX: 410, toY: 510, color: #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1))
        drawLine(fromX: 205, fromY: 432, toX: 205, toY: 650, color: #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1))
        
        drawLine(fromX: 616, fromY: 432, toX: 410, toY: 510, color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        drawLine(fromX: 616, fromY: 432, toX: 616, toY: 650, color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        
        drawLine(fromX: 191, fromY: 411, toX: 410, toY: 510, color: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
        drawLine(fromX: 191, fromY: 411, toX: 191, toY: 650, color: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
        
        drawLine(fromX: 630, fromY: 411, toX: 410, toY: 510, color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        drawLine(fromX: 630, fromY: 411, toX: 630, toY: 650, color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        
        drawLine(fromX: 179, fromY: 394, toX: 410, toY: 510, color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        drawLine(fromX: 179, fromY: 394, toX: 179, toY: 650, color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        
        drawLine(fromX: 643, fromY: 391, toX: 410, toY: 510, color: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
        drawLine(fromX: 643, fromY: 391 , toX: 643, toY: 650, color: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
        
        drawCircle(x: 410, y: 510, radius: 240, color: #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1))
        drawCircle(x: 410, y: 510, radius: 260, color: #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1))
    }
    
    func drawProblem2() {
        drawLine(fromX: 150, fromY: 100, toX: 550, toY: 100, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawLine(fromX: 250, fromY: 340, toX: 270, toY: 360, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawLine(fromX: 270, fromY: 340, toX: 250, toY: 360, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawLine(fromX: 500, fromY: 340, toX: 520, toY: 360, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawLine(fromX: 520, fromY: 340, toX: 500, toY: 360, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawLine(fromX: 150, fromY: 90, toX: 150, toY: 110, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawLine(fromX: 550, fromY: 90, toX: 550, toY: 110, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
    
        drawTwoLines(x: 306, y: 208, color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        drawTwoLines(x: 306, y: 496, color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))

        drawTwoLines(x: 339, y: 198, color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        drawTwoLines(x: 339, y: 502, color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        
        drawTwoLines(x: 370, y: 196, color: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
        drawTwoLines(x: 370, y: 507, color: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
        
        drawTwoLines(x: 402, y: 196, color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        drawTwoLines(x: 402, y: 507, color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        
        drawTwoLines(x: 434, y: 200, color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        drawTwoLines(x: 434, y: 503, color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        
        drawTwoLines(x: 465, y: 208, color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        drawTwoLines(x: 465, y: 494, color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        
        drawTwoLines(x: 497, y: 222, color: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
        drawTwoLines(x: 497, y: 480, color: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
        
        drawTwoLines(x: 530, y: 243, color: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1))
        drawTwoLines(x: 530, y: 459, color: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1))
        
        drawTwoLines(x: 562, y: 279, color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        drawTwoLines(x: 562, y: 426, color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        
        drawTwoLines(x: 273, y: 223, color: #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1))
        drawTwoLines(x: 273, y: 480, color: #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1))
        
        drawTwoLines(x: 241, y: 244, color: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        drawTwoLines(x: 241, y: 460, color: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        
        drawTwoLines(x: 209, y: 278, color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))
        drawTwoLines(x: 209, y: 426, color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))
        
        drawTwoLines(x: 194, y: 309, color: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))
        drawTwoLines(x: 194, y: 397, color: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))
        
        drawTwoLines(x: 577, y: 310, color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1))
        drawTwoLines(x: 577, y: 396, color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1))
        
        drawTwoLines(x: 185, y: 350, color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
        drawTwoLines(x: 585, y: 350, color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
        
//        for i in 0..<9 {
//            drawCircle(x: 260, y: 350, radius: 190 + 20 * CGFloat(i), color: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))
//            drawCircle(x: 510, y: 350, radius: 210 - 20 * CGFloat(i), color: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))
//      }
    }
    
    func drawTwoLines(x: CGFloat, y: CGFloat, color: UIColor) {
        drawLine(fromX: 260, fromY: 350, toX: x, toY: y, color: color)
        drawLine(fromX: x, fromY: y, toX: 510, toY: 350, color: color)
    }
    
    func drawLine(fromX: CGFloat, fromY: CGFloat, toX: CGFloat, toY: CGFloat, color: UIColor) {
        let penicl = UIBezierPath()
        penicl.move(to: CGPoint(x: fromX, y: fromY))
        penicl.addLine(to: CGPoint(x: toX, y: toY))
        
        penicl.lineWidth = 2
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
