import CoreImage.CIFilterBuiltins
import UIKit

public struct QRCodeKit {
        
    private static let context = CIContext()
    
    public static func generate(from text: String, size: QRCodeSize = .medium, style: QRCodeColor = .default) -> UIImage? {
        let filter = CIFilter.qrCodeGenerator()
        let data = Data(text.utf8)
        filter.setValue(data, forKey: "inputMessage")
        
        guard let outputImage = filter.outputImage, let image = outputImage.style(with: style) else { return nil }
        
        let imageWidth = image.extent.width
        let scale = size.size / imageWidth
        
        let transform = CGAffineTransform(scaleX: scale, y: scale)
        let scaledImage = image.transformed(by: transform)
        
        guard let cgImage = context.createCGImage(scaledImage, from: scaledImage.extent) else { return nil }
        return UIImage(cgImage: cgImage)
    }
}
