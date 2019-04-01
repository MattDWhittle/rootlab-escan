//
//  RichieBraceViewController.swift
//  eScan for Root Lab
//
//  Created by RahMat on 1/10/19.
//  Copyright © 2019 rootlab. All rights reserved.
//

import Foundation


class RichieBraceViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let richieBraceMedialHeelSkivePickerViewValues = ["None", "2mm", "4mm", "6mm"]
    let richieBraceTopCoverLengthViewValues = ["To Mets", "To Sulcus", "To Toes"]
    let richieBraceTopCoverMaterialPickerViewValues = ["EVA", "NCN", "Synthetic Leather", "Diabetic (Plastazote / Poron)"]
    let richieBraceHeelCupHeightPickerViewValues = ["35mm", "18mm", "14mm", "10mm"]

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if (pickerView == topCoverLengthPickerView) {
            return richieBraceTopCoverLengthViewValues.count;
        } else if (pickerView == topCoverMaterialPickerView) {
            return richieBraceTopCoverMaterialPickerViewValues.count;
        } else if (pickerView == heelCupHeightPickerView) {
            return richieBraceHeelCupHeightPickerViewValues.count;
        } else if (pickerView == medialHeelSkivePikerView) {
            return richieBraceMedialHeelSkivePickerViewValues.count;
        }

        return 4;
    }
    
    // The data to return fopr the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        var pickerLabel: UILabel? = (view as? UILabel)
        if pickerLabel == nil {
            pickerLabel = UILabel()
            let multiplier : CGFloat = 1 - ((1 - (screenSize.width / 2048)) / 2);
            if (row == 0) {
                pickerLabel?.font = UIFont(name: "Gil Sans-Bold", size: 24 * multiplier)
            } else {
                pickerLabel?.font = UIFont(name: "Gil Sans", size: 18 * multiplier)
            }
            pickerLabel?.textAlignment = .center
        }
        
        if (pickerView == topCoverLengthPickerView) {
            pickerLabel?.text = richieBraceTopCoverLengthViewValues[row]
        } else if (pickerView == topCoverMaterialPickerView) {
            pickerLabel?.text = richieBraceTopCoverMaterialPickerViewValues[row]
        } else if (pickerView == heelCupHeightPickerView) {
            pickerLabel?.text = richieBraceHeelCupHeightPickerViewValues[row]
        } else if (pickerView == medialHeelSkivePikerView) {
            pickerLabel?.text = richieBraceMedialHeelSkivePickerViewValues[row]
        }

        
        return pickerLabel!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let multiplier : CGFloat = 1 - ((1 - (screenSize.width / 2048)) / 2);

        if (multiplier != 1) {
            for i in 0 ..<  self.view.subviews.count {
                let iSubview = self.view.subviews[i];
                if (iSubview is UILabel) {
                    (iSubview as! UILabel).font = UIFont(name: "Gil Sans-Bold", size: 24 * multiplier)
                }
            }
            richieBraceHeaderUILabel?.font = UIFont(name: "Helvetica Neue", size: 64 * multiplier);
            
            medialHeelSkiveUILabel?.font = UIFont(name: "Gil Sans-Bold", size: 48 * multiplier)
            topCoverUILabel?.font = UIFont(name: "Gil Sans-Bold", size: 48 * multiplier)
            correctionAndModificationsUILabel?.font = UIFont(name: "Gil Sans-Bold", size: 48 * multiplier)
            afoSpecificationUILabel?.font = UIFont(name: "Gil Sans-Bold", size: 48 * multiplier)

            otherAccommodation?.font = UIFont(name: "Gil Sans-Bold", size: 24 * multiplier)
            heelLiftInches?.font = UIFont(name: "Gil Sans-Bold", size: 24 * multiplier)
            specialInstructions?.font = UIFont(name: "Gil Sans-Bold", size: 24 * multiplier)

        }
        
        richieBraceViewController = self;
    }
    
    @IBAction func clearNotMe(sender: UISwitch) {
        if (sender.isOn) {
            if (sender != afoBlack3mm) {
                afoBlack3mm.isOn = false;
            }
            if (sender != afoBlack4mm) {
                afoBlack4mm.isOn = false;
            }
            if (sender != afoBlack5mm) {
                afoBlack5mm.isOn = false;
            }
            if (sender != afoWhite3mm) {
                afoWhite3mm.isOn = false;
            }
            if (sender != afoFleshTone4mm) {
                afoFleshTone4mm.isOn = false;
            }
        }
        
    }
    
    func clearThisRichieBraceForm() {
        medialHeelSkivePikerView.selectRow(0, inComponent: 0, animated: false);
        topCoverLengthPickerView.selectRow(0, inComponent: 0, animated: false);
        topCoverMaterialPickerView.selectRow(0, inComponent: 0, animated: false);
        heelCupHeightPickerView.selectRow(0, inComponent: 0, animated: false);
        
        plantarFaciaAccommodation.isOn = false;
        sytloidAccommodation.isOn = false;
        navicularAccommodation.isOn = false;
        afoBlack3mm.isOn = false;
        afoBlack4mm.isOn = false;
        afoBlack5mm.isOn = false;
        afoWhite3mm.isOn = false;
        afoFleshTone4mm.isOn = false;
        medialArchFlange.isOn = false;
        lateralFlange.isOn = false;
        medialArchSuspender.isOn = false;
        laterArchSuspender.isOn = false;
        addPoronUnderExtension.isOn = false;
        fullRearfootPost.isOn = false;

        otherAccommodation.text = "";
        heelLiftInches.text = "";
        specialInstructions.text = "";
    }
    
    @IBOutlet var richieBraceHeaderUILabel: UILabel!
    @IBOutlet var topCoverUILabel: UILabel!
    @IBOutlet var correctionAndModificationsUILabel: UILabel!
    @IBOutlet var afoSpecificationUILabel: UILabel!
    @IBOutlet var medialHeelSkiveUILabel: UILabel!

    @IBOutlet var medialHeelSkivePikerView: UIPickerView!
    @IBOutlet var topCoverLengthPickerView: UIPickerView!
    @IBOutlet var topCoverMaterialPickerView: UIPickerView!
    @IBOutlet var heelCupHeightPickerView: UIPickerView!
    
    @IBOutlet var plantarFaciaAccommodation: UISwitch!
    @IBOutlet var sytloidAccommodation: UISwitch!
    @IBOutlet var navicularAccommodation: UISwitch!
    @IBOutlet var afoBlack3mm: UISwitch!
    @IBOutlet var afoBlack4mm: UISwitch!
    @IBOutlet var afoBlack5mm: UISwitch!
    @IBOutlet var afoWhite3mm: UISwitch!
    @IBOutlet var afoFleshTone4mm: UISwitch!
    @IBOutlet var medialArchFlange: UISwitch!
    @IBOutlet var lateralFlange: UISwitch!
    @IBOutlet var medialArchSuspender: UISwitch!
    @IBOutlet var laterArchSuspender: UISwitch!
    @IBOutlet var addPoronUnderExtension: UISwitch!
    @IBOutlet var fullRearfootPost: UISwitch!

    @IBOutlet var otherAccommodation: UITextField!
    @IBOutlet var heelLiftInches: UITextField!

    @IBOutlet var specialInstructions: UITextView!

}
