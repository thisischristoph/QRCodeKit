//
//  CIImage+Extensions.swift
//  
//
//  Created by Christopher Harrison on 20/08/2020.
//

import UIKit

extension CIImage {
    
    func style(with style: QRCodeColor) -> CIImage? {
        switch style {
        case .default: return self
        case .custom(let foreground, let background): return self.tinted(foreground, background)
            
        }
    }
    
    func tinted(_ foreground: UIColor, _ background: UIColor) -> CIImage? {
        let colorFilter = CIFilter.falseColor()
        colorFilter.setValue(self, forKey: "inputImage")
        colorFilter.setValue(background.coreImageColor, forKey: "inputColor0")
        colorFilter.setValue(foreground.coreImageColor, forKey: "inputColor1")
        return colorFilter.outputImage
    }
}
