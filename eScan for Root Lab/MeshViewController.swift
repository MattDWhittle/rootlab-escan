//
//  MeshViewController.swift
//  RRStructureScanner
//
//  Created by Christopher Worley on 11/24/17.
//  Copyright © 2017 Ruthless Research, LLC. All rights reserved.
//

import MessageUI
import ImageIO

open class MeshViewController: UIViewController, UIGestureRecognizerDelegate, MFMailComposeViewControllerDelegate {

    override open var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        get {
            if (enableAllOrientation) {
                return .all
            } else {
                return .portrait
            }
            
        }
    }

    required public init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)

    }

    override open func viewDidLoad() {
		
        super.viewDidLoad()
		
    }

}

