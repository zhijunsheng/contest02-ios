//
//  BoardView.swift
//  contest02
//
//  Created by Bowen Lin on 2020-05-09.
//  Copyright © 2020 Bowen Lin. All rights reserved.
//

import UIKit

class BoardView: UIView {

   
    override func draw(_ rect: CGRect) {
        // Drawing code
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 500, y: 500))
        path.stroke()
    }
    

}
