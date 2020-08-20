//
//  QRCodeSize.swift
//  
//
//  Created by Christopher Harrison on 20/08/2020.
//

import UIKit

public enum QRCodeSize {
    case small
    case medium
    case large
    case custom(_ width: CGFloat)
    
    var size: CGFloat {
        switch self {
        case .small: return 100
        case .medium: return 500
        case .large: return 1500
        case .custom(let width): return width
        }
    }
}
