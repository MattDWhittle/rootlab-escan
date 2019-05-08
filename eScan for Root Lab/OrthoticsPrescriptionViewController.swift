//
//  OrthoticsPrescriptionViewController.swift
//  eScan for Root Lab
//
//  Created by RahMat on 2/9/19.
//  Copyright © 2019 rootlab. All rights reserved.
//

import Foundation

class OrthoticsPrescriptionViewController: UIViewController {
    
    @IBOutlet var orthosisMaterialFinishedUIImageView: UIImageView!
    @IBOutlet var correctionsAndModificationsFinishedUIImageView: UIImageView!
    @IBOutlet var orthosisSpecificationsFinishedUIImageView: UIImageView!
    @IBOutlet var postingFinishedUIImageView: UIImageView!
    @IBOutlet var topCoversAndExtensionsFinishedUIImageView: UIImageView!
    @IBOutlet var rushOrderFinishedUIImageView: UIImageView!
    @IBOutlet var chiefComplaintDiagnosisFinishedUIImageView: UIImageView!

    @IBOutlet var orthosisMaterialTextView: UITextView!
    @IBOutlet var correctionsAndModificationsTextView: UITextView!
    @IBOutlet var orthosisSpecificationsTextView: UITextView!
    @IBOutlet var postingTextView: UITextView!
    @IBOutlet var topCoversAndExtensionsTextView: UITextView!
    @IBOutlet var rushOrderTextView: UITextView!
    @IBOutlet var chiefComplaintDiagnosisTextView: UITextView!

    @IBOutlet var orthosisMaterialButton: UIButton!
    @IBOutlet var orthosisSaveToMyDevicesButton: UIButton!

    @IBOutlet var orthosisHeadingLabel: UILabel!
    
    @IBAction func clickAddToMyDevices() {
        let parent = self.parent! as! ViewController;
        parent.saveMyDeviceToCoreData();
        orthosisSaveToMyDevicesButton.isEnabled = false;
    }

    @IBAction func clickOrthosisMaterial() {
        let parent = self.parent! as! ViewController;
        
        parent.ClickOrthosisMaterial()
    }
    @IBAction func clickCorrectionsAndModifications() {
        let parent = self.parent! as! ViewController;
        
        parent.ClickOrthosisCorrectionsAndModifications()
    }
    @IBAction func clickOrthosisSpecifications() {
        let parent = self.parent! as! ViewController;
        
        parent.ClickOrthosisSpecifications()
    }
    @IBAction func clickPosting() {
        let parent = self.parent! as! ViewController;
        
        parent.ClickOrthosisPosting()
    }
    @IBAction func clickTopCoversAndExtensions() {
        let parent = self.parent! as! ViewController;
        
        parent.ClickOrthosisTopCoversAndExtensions()
    }
    @IBAction func clickRushOrder() {
        let parent = self.parent! as! ViewController;
        
        parent.ClickOrthosisRushOrder()
    }
    @IBAction func clickChiefComplaintDiagnosis() {
        let parent = self.parent! as! ViewController;
        
        parent.ClickOrthosisCommentsInstructions()
    }
    

    
    override func viewDidLoad() {
        orthoticsPrescriptionViewController = self;

        let multiplier : CGFloat = 1 - ((1 - (screenSize.width / 2048)) / 2);
        
        if (multiplier != 1) {
            for i in 0 ..<  self.view.subviews.count {
                let iSubview = self.view.subviews[i];
                if (iSubview is UILabel) {
                    (iSubview as! UILabel).font = UIFont(name: "Gil Sans-Bold", size: 24 * multiplier)
                }
            }

            orthosisHeadingLabel.font = UIFont(name: "Gil Sans-Bold", size: 100 * multiplier)
            orthosisSaveToMyDevicesButton.titleLabel?.font = UIFont(name: "Gil Sans-Bold", size: 48 * multiplier)
            
            orthosisMaterialTextView.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            correctionsAndModificationsTextView.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisSpecificationsTextView.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            postingTextView.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            topCoversAndExtensionsTextView.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            rushOrderTextView.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            chiefComplaintDiagnosisTextView.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
        }

    }
    
    func updateImagesForValidOrthoticsForm() {
        let parent = self.parent! as! ViewController;
        
        parent.prescriptionFinishedUIImageView.image =  parent.orthosisFormValid() ? UIImage(named: "checked.png") : UIImage(named: "unchecked.png");
        
        postingFinishedUIImageView.image = parent.postingValid() ? UIImage(named: "checked.png") : UIImage(named: "unchecked.png");
        rushOrderFinishedUIImageView.image = parent.rushOrderValid() ? UIImage(named: "checked.png") : UIImage(named: "unchecked.png");
        orthosisMaterialFinishedUIImageView.image = parent.orthosisMaterialValid() ? UIImage(named: "checked.png") : UIImage(named: "unchecked.png");
        orthosisSpecificationsFinishedUIImageView.image = parent.orthosisSpecificationsValid() ? UIImage(named: "checked.png") : UIImage(named: "unchecked.png");
        topCoversAndExtensionsFinishedUIImageView.image = topCoversViewController?.topCoversAndExtensionsValid() ?? false ? UIImage(named: "checked.png") : UIImage(named: "unchecked.png");
        chiefComplaintDiagnosisFinishedUIImageView.image = parent.chiefComplaintDiagnosisValid() ? UIImage(named: "checked.png") : UIImage(named: "unchecked.png");
        correctionsAndModificationsFinishedUIImageView.image = parent.correctionsAndModificationsValid() ? UIImage(named: "checked.png") : UIImage(named: "unchecked.png");
    }

}
