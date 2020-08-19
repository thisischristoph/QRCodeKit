import CoreImage.CIFilterBuiltins
import UIKit

public struct QRCodeKit {
    
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
    
    private static let context = CIContext()
    
    public static func generate(from text: String, size: QRCodeSize = .medium) -> UIImage? {
        let filter = CIFilter.qrCodeGenerator()
        let data = Data(text.utf8)
        filter.setValue(data, forKey: "inputMessage")
        guard let outputImage = filter.outputImage else { return nil }
        
        let outputImageWidth = outputImage.extent.width
        let scale = size.size / outputImageWidth
        
        let transform = CGAffineTransform(scaleX: scale, y: scale)
        let scaledImage = outputImage.transformed(by: transform)
        
        guard let cgImage = context.createCGImage(scaledImage, from: scaledImage.extent) else { return nil }
        return UIImage(cgImage: cgImage)
    }
}
