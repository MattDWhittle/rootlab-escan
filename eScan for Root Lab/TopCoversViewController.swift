//
//  TopCoversViewController.swift
//  eScan for Root Lab
//
//  Created by RahMat on 2/16/19.
//  Copyright © 2019 rootlab. All rights reserved.
//

import Foundation

class TopCoversViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    let topCoversAndExtensionsTopCoverLengthPickerData: [String] =
        ["Top cover length", "Orthosis only", "To sulcus", "Full length"];
    
    
    let topCoversAndExtensionsForefootExtensionMaterialPickerData: [String] =
        ["Material", "None", "Poron", "Korex", "EVA", "NCN™"];
    
    let topCoversAndExtensionsForefootExtensionThicknessPickerData: [String] =
        ["Thickness", "None", "1/16\"", "1/8\"", "3/16\"", "1/4\""];
    
    let topCoversAndExtensionsForefootExtensionExtensionLengthPickerData: [String] =
        ["Extension Length", "None", "Sulcus", "Full length"];

    override func viewDidLoad() {
        topCoversViewController = self;
        
        let multiplier : CGFloat = 1 - ((1 - (screenSize.width / 2048)) / 2);
        
        for i in 0 ..<  self.view.subviews.count {
            let iSubview = self.view.subviews[i];
            if (iSubview is UILabel) {
                (iSubview as! UILabel).font = UIFont(name: "Gil Sans-Bold", size: 24 * multiplier)
            }
        }
        
        topCoversAndExtensionsTopCoverLengthPicker.delegate = self;
        topCoversAndExtensionsTopCoverLengthPicker.dataSource = self;
        topCoversAndExtensionsForefootExtensionMaterialPicker.delegate = self;
        topCoversAndExtensionsForefootExtensionMaterialPicker.dataSource = self;
        topCoversAndExtensionsForefootExtensionThicknessPicker.delegate = self;
        topCoversAndExtensionsForefootExtensionThicknessPicker.dataSource = self;
        topCoversAndExtensionsForefootExtensionExtensionLengthPicker.delegate = self;
        topCoversAndExtensionsForefootExtensionExtensionLengthPicker.dataSource = self;

        topCoversAndExtensionsBottomCoverMaterialEVA116UISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if (pickerView == topCoversAndExtensionsTopCoverLengthPicker) {
            return topCoversAndExtensionsTopCoverLengthPickerData.count;
        } else if (pickerView == topCoversAndExtensionsTopCoverLengthPicker) {
            return topCoversAndExtensionsTopCoverLengthPickerData.count;
        } else if (pickerView == topCoversAndExtensionsForefootExtensionMaterialPicker) {
            return topCoversAndExtensionsForefootExtensionMaterialPickerData.count;
        } else if (pickerView == topCoversAndExtensionsForefootExtensionThicknessPicker) {
            return topCoversAndExtensionsForefootExtensionThicknessPickerData.count;
        } else if (pickerView == topCoversAndExtensionsForefootExtensionExtensionLengthPicker) {
            return topCoversAndExtensionsForefootExtensionExtensionLengthPickerData.count;
        }
        return 3;
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var pickerLabel: UILabel? = (view as? UILabel)
       
        if (view == nil) {
            pickerLabel = UILabel();
        }
        
        if (pickerView == topCoversAndExtensionsTopCoverLengthPicker) {
            pickerLabel?.text = topCoversAndExtensionsTopCoverLengthPickerData[row];
        } else if (pickerView == topCoversAndExtensionsForefootExtensionMaterialPicker) {
            pickerLabel?.text = topCoversAndExtensionsForefootExtensionMaterialPickerData[row];
        } else if (pickerView == topCoversAndExtensionsForefootExtensionThicknessPicker) {
            pickerLabel?.text = topCoversAndExtensionsForefootExtensionThicknessPickerData[row];
        } else if (pickerView == topCoversAndExtensionsForefootExtensionExtensionLengthPicker) {
            pickerLabel?.text = topCoversAndExtensionsForefootExtensionExtensionLengthPickerData[row];
        }
        
        return pickerLabel ?? UIView();
    }
    
    @IBOutlet var topCoversAndExtensionsTopCoverLengthPicker: UIPickerView!
    @IBOutlet var topCoversAndExtensionsForefootExtensionMaterialPicker: UIPickerView!
    @IBOutlet var topCoversAndExtensionsForefootExtensionThicknessPicker: UIPickerView!
    @IBOutlet var topCoversAndExtensionsForefootExtensionExtensionLengthPicker: UIPickerView!

    @IBOutlet var topCoversAndExtensionsBottomCoverMaterialEVA116UISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsBottomCoverForefootReinforcementUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsMaterialVinylBlackUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsMaterialVinylBronzeUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsMaterialVinylForestUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsMaterialLeatherBlackUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsMaterialLeatherBrownUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsMaterialEva116UISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsMaterialEva18UISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsMaterialNcn116UISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsMaterialNcn18UISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsDiabetic116Plastazone18UISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsEvaArchFillLeftUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsEvaArchFillRightUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsMedialArchReinforceLeftUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsMedialArchReinformceRightUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsMortonsExtensionLeftUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsMortonsExtensionRightUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsReverseMortonsExtensionLeftUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsReverseMortonsExtensionRightUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsMetatarsalBarLeftUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsMetatarsalBarRightUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsMetatarsalPadLeftUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsMetatarsalPadRightUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsHeelPadLeftUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsHeelPadRightUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsHorseshoePadLeftUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsHorseshoePadRightUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsDancersPadLeftUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsDancersPadRightUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsKineticWedgeLeftUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsKineticWedgeRightUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsEVAUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsKorexUISwitch: UISwitch!
    
    @IBOutlet var topCoversAndExtensionsMetHeadAccommodationLeft1UIImageView: UIImageView!
    @IBOutlet var topCoversAndExtensionsMetHeadAccommodationLeft2UIImageView: UIImageView!
    @IBOutlet var topCoversAndExtensionsMetHeadAccommodationLeft3UIImageView: UIImageView!
    @IBOutlet var topCoversAndExtensionsMetHeadAccommodationLeft4UIImageView: UIImageView!
    @IBOutlet var topCoversAndExtensionsMetHeadAccommodationLeft5UIImageView: UIImageView!
    @IBOutlet var topCoversAndExtensionsMetHeadAccommodationRight1UIImageView: UIImageView!
    @IBOutlet var topCoversAndExtensionsMetHeadAccommodationRight2UIImageView: UIImageView!
    @IBOutlet var topCoversAndExtensionsMetHeadAccommodationRight3UIImageView: UIImageView!
    @IBOutlet var topCoversAndExtensionsMetHeadAccommodationRight4UIImageView: UIImageView!
    @IBOutlet var topCoversAndExtensionsMetHeadAccommodationRight5UIImageView: UIImageView!
    @IBOutlet var topCoversAndExtensionsNeuromaPadInterspaceLeft1UIImageView: UIImageView!
    @IBOutlet var topCoversAndExtensionsNeuromaPadInterspaceLeft2UIImageView: UIImageView!
    @IBOutlet var topCoversAndExtensionsNeuromaPadInterspaceLeft3UIImageView: UIImageView!
    @IBOutlet var topCoversAndExtensionsNeuromaPadInterspaceLeft4UIImageView: UIImageView!
    @IBOutlet var topCoversAndExtensionsNeuromaPadInterspaceRight1UIImageView: UIImageView!
    @IBOutlet var topCoversAndExtensionsNeuromaPadInterspaceRight2UIImageView: UIImageView!
    @IBOutlet var topCoversAndExtensionsNeuromaPadInterspaceRight3UIImageView: UIImageView!
    @IBOutlet var topCoversAndExtensionsNeuromaPadInterspaceRight4UIImageView: UIImageView!

    func topCoversAndExtensionsValid()-> Bool {
        if (
            topCoversAndExtensionsForefootExtensionExtensionLengthPicker.selectedRow(inComponent: 0) > 0
                && topCoversAndExtensionsForefootExtensionThicknessPicker.selectedRow(inComponent: 0) > 0
                && topCoversAndExtensionsForefootExtensionMaterialPicker.selectedRow(inComponent: 0) > 0
            
            ) {
            return true;
        }
        if (
            topCoversAndExtensionsForefootExtensionExtensionLengthPicker.selectedRow(inComponent: 0) == 0
                && topCoversAndExtensionsForefootExtensionThicknessPicker.selectedRow(inComponent: 0) == 0
                && topCoversAndExtensionsForefootExtensionMaterialPicker.selectedRow(inComponent: 0) == 0
            
            ) {
            return true;
        }
        return false;
    }
    
    @objc func switchChanged(mySwitch: UISwitch) {
//        if (mySwitch == newPractitionerSameAsBillingAddressUiSwitch) {
        let parent = self.parent! as! ViewController;

        parent.changeValuesBasedOnChangedInput();
    }
}

