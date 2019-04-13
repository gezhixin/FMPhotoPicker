//
//  FMImageMarker.swift
//  FMPhotoPicker
//
//  Created by aaronge on 2019/4/10.
//

import UIKit

class FMImageMarker: NSObject {
    var markStack: Array<FMImageMark>!
    
    override init() {
        super.init()
        markStack = Array<FMImageMark>()
    }
}
