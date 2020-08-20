# QRCodeKit

A super lightweight Swift QRCode generator.

### Swift Package Manager
```
https://github.com/thisischristoph/QRCodeKit.git
```

### QRCodeKit 101

Simply import QRCodeKit and use as follows:
```swift
let image = QRCodeKit.generate(from: "https://www.example.com")
```

Customise the size of the image creates
```swift
let image = QRCodeKit.generate(from: "https://www.example.com", size: .small) // 100 x 100
let image = QRCodeKit.generate(from: "https://www.example.com", size: .medium) // 500 x 500
let image = QRCodeKit.generate(from: "https://www.example.com", size: .large) // 1500 x 500
let image = QRCodeKit.generate(from: "https://www.example.com", size: .custom(800))
```

Customise the colors
```swift
// Red background, Blue foreground
let image = QRCodeKit.generate(from: "https://www.example.com", size: .medium, style: .custom(.clear, .blue))

//Transparent Background
let image = QRCodeKit.generate(from: "https://www.example.com", size: .medium, style: .custom(.clear, .blue))

//Transparent Foreground
let image = QRCodeKit.generate(from: "https://www.example.com", size: .medium, style: .custom(.blue, .clear))
```
