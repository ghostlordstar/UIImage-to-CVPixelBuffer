//
//  UIImage2CVPixelBuffer.swift
//  CVPixelBufferHelper
//
//  Created by Hansen on 2022/7/20.
//  Copyright © 2022 Hansen. All rights reserved.
//

import UIKit

public extension UIImage {
    func CVPixelBuffer() -> CVPixelBuffer? {
        return self.cgImage?.CVPixelBuffer()
    }
}

public extension CGImage {
    func CVPixelBuffer() -> CVPixelBuffer? {
        guard (self.width + self.height) > 0 else {return nil}
        let frameSize = CGSize(width: self.width, height: self.height)
        var pixelBuffer:CVPixelBuffer? = nil
        let status = CVPixelBufferCreate(kCFAllocatorDefault, Int(frameSize.width), Int(frameSize.height), kCVPixelFormatType_32BGRA , nil, &pixelBuffer)
        guard status == kCVReturnSuccess else {
            return nil
        }
        CVPixelBufferLockBaseAddress(pixelBuffer!, CVPixelBufferLockFlags.init(rawValue: 0))
        let data = CVPixelBufferGetBaseAddress(pixelBuffer!)
        let rgbColorSpace = CGColorSpaceCreateDeviceRGB()
        let bitmapInfo = CGBitmapInfo(rawValue: CGBitmapInfo.byteOrder32Little.rawValue | CGImageAlphaInfo.premultipliedFirst.rawValue)
        let context = CGContext(data: data, width: Int(frameSize.width), height: Int(frameSize.height), bitsPerComponent: 8, bytesPerRow: CVPixelBufferGetBytesPerRow(pixelBuffer!), space: rgbColorSpace, bitmapInfo: bitmapInfo.rawValue)
        context?.draw(self, in: CGRect(x: 0, y: 0, width: self.width, height: self.height))
        CVPixelBufferUnlockBaseAddress(pixelBuffer!, CVPixelBufferLockFlags(rawValue: 0))
        return pixelBuffer
    }
}
