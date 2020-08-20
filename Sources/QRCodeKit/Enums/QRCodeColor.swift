//
//  QRCodeColor.swift
//  
//
//  Created by Christopher Harrison on 20/08/2020.
//

import UIKit

public enum QRCodeColor {
    case `default`
    case custom(_ foreground: UIColor, _ background: UIColor)
    
    var color: (foreground: UIColor, background: UIColor)? {
        switch self {
        case .default: return nil
            
        case .custom(let forground, let background): return (forground, background)
        }
    }
}
