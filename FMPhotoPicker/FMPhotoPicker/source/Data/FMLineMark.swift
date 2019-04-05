//
//  FMLineMark.swift
//  FMPhotoPicker
//
//  Created by zhixin ge on 2019/4/5.
//

import UIKit


class FMLineMark: NSObject {
    
    enum FMLineMarkType: Int {
        case pencil
        case watercolor
    }
    
    var color: Int! = 0x00000000  //ARGB
    var path: Array<CGPoint>?
    var type: FMLineMarkType! = .pencil
}
