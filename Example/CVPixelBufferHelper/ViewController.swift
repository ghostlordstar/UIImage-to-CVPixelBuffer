//
//  ViewController.swift
//  CVPixelBufferHelper
//
//  Created by Hansen on 07/20/2022.
//  Copyright (c) 2022 Hansen. All rights reserved.
//

import UIKit
import CVPixelBufferHelper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        let img = UIImage.init(named: "test.png")
        let CVP1 = img!.CVPixelBuffer()
        let CVP2 = img!.cgImage?.CVPixelBuffer()
        print("CVP1:\(CVP1)\n CVP2:\(CVP2)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
}

