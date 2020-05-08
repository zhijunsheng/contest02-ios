//
//  SquareView.swift
//  contest02
//
//  Created by Andy Yan on 2020-05-08.
//  Copyright © 2020 ethan. All rights reserved.
//

import UIKit

class SquareView: UIView {

    override func draw(_ rect: CGRect) {
        
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: 200, y: 400))
        pencil.addLine(to: CGPoint(x: 600, y: 400))
        
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        pencil.stroke()
        
    }
    

}
