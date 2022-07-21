# CVPixelBufferHelper 
Forked from [UIImage-to-CVPixelBuffer](https://github.com/brianadvent/UIImage-to-CVPixelBuffer)

[![CI Status](https://img.shields.io/travis/Hansen/CVPixelBufferHelper.svg?style=flat)](https://travis-ci.org/Hansen/CVPixelBufferHelper)
[![Version](https://img.shields.io/cocoapods/v/CVPixelBufferHelper.svg?style=flat)](https://cocoapods.org/pods/CVPixelBufferHelper)
[![License](https://img.shields.io/cocoapods/l/CVPixelBufferHelper.svg?style=flat)](https://cocoapods.org/pods/CVPixelBufferHelper)
[![Platform](https://img.shields.io/cocoapods/p/CVPixelBufferHelper.svg?style=flat)](https://cocoapods.org/pods/CVPixelBufferHelper)

## Example
To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Usage
```swift
    let img = UIImage.init(named: "test.png")
    let CVP1 = img!.CVPixelBuffer()
    let CVP2 = img!.cgImage?.CVPixelBuffer()
    print("CVP1:\(CVP1)\n CVP2:\(CVP2)")
```

## Requirements
`UIKit`

## Installation

CVPixelBufferHelper is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CVPixelBufferHelper'
```

## Author

Hansen, heshanzhang@outlook.com

## License

CVPixelBufferHelper is available under the MIT license. See the LICENSE file for more info.
