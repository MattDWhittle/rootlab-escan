//
//  CustomPrintRenderer.swift
//  eScan for Root Lab
//
//  Created by RahMat on 12/25/18.
//  Copyright © 2018 rootlab. All rights reserved.
//

import Foundation

import UIKit
import CoreData
class CustomPrintPageRenderer: UIPrintPageRenderer {
    
    let A4PageWidth: CGFloat = 595.2
    
    let A4PageHeight: CGFloat = 841.8
    
    override init() {
        super.init()
        
        let pageFrame = CGRect(x: 0.0, y: 0.0, width: A4PageWidth, height: A4PageHeight)
        self.setValue(NSValue(cgRect: pageFrame), forKey: "paperRect")
        self.setValue(NSValue(cgRect: pageFrame.insetBy(dx: 10.0, dy: 10.0)), forKey: "printableRect")
        
    }
    
    override func drawPage(at pageIndex: Int, in printableRect: CGRect) {
        
    }
    
}
