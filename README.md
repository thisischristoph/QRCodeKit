# QRCodeKit

A super lightweight Swift QRCode generator.

### Swift Package Manager
```
https://github.com/thisischristoph/QRCodeKit.git
```

### QRCodeKit 101

Simply import QRCodeKit and use as follows:
```swift
let image = QRCodeKit.generate(from: "https://www.example.com", size: .small) // 100 x 100
let image = QRCodeKit.generate(from: "https://www.example.com", size: .medium) // 500 x 500
let image = QRCodeKit.generate(from: "https://www.example.com", size: .large) // 1500 x 500
let image = QRCodeKit.generate(from: "https://www.example.com", size: .custom(800))
```
