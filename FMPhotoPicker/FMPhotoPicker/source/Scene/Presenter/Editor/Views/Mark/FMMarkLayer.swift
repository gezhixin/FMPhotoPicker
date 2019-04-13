//
//  FMMarkLayer.swift
//  FMPhotoPicker
//
//  Created by aaronge on 2019/4/13.
//

import UIKit

class FMMarkLayer: CAShapeLayer {
    override init() {
        super.init()
        self.fillColor = UIColor.red.cgColor
        self.lineWidth = 1
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
