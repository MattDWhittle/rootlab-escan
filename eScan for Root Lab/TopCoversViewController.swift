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
        ["No Top Cover", "Orthosis only", "To sulcus", "Full length"];
    
    
    let topCoversAndExtensionsForefootExtensionMaterialPickerData: [String] =
        ["Extension Material", "None", "Poron", "Korex", "EVA", "NCN™"];
    
    let topCoversAndExtensionsForefootExtensionThicknessPickerData: [String] =
        ["Extension Thickness", "None", "1/16\"", "1/8\"", "3/16\"", "1/4\""];
    
    let topCoversAndExtensionsForefootExtensionExtensionLengthPickerData: [String] =
        ["Extension Length", "None", "Sulcus", "Full length"];

    let topCoversAndExtensionsForefootExtensionExtensionLengthOnlySulcusPickerData: [String] =
        ["Sulcus"];

    
    override func viewDidLoad() {
        topCoversViewController = self;
        
        
        let multiplier : CGFloat = 1 - ((1 - (screenSize.width / 2048)) / 2);
        
        for i in 0 ..<  self.view.subviews.count {
            let iSubview = self.view.subviews[i];
            if (iSubview is UILabel) {
                (iSubview as! UILabel).font = UIFont(name: "Gil Sans-Bold", size: 24 * multiplier)
            }
        }
        
        for i in 0 ..<  self.view.subviews.count {
            let iSubview = self.view.subviews[i];
            if (iSubview is UIButton) {
                (iSubview as! UIButton).titleLabel?.font = UIFont(name: "Gil Sans-Bold", size: 24 * multiplier)
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

         topCoversAndExtensionsMaterialVinylBlackUISwitch.addTarget(self, action: #selector(materialSwitchChanged), for: UIControl.Event.valueChanged)
         topCoversAndExtensionsMaterialVinylBronzeUISwitch.addTarget(self, action: #selector(materialSwitchChanged), for: UIControl.Event.valueChanged)
         topCoversAndExtensionsMaterialVinylForestUISwitch.addTarget(self, action: #selector(materialSwitchChanged), for: UIControl.Event.valueChanged)
         topCoversAndExtensionsMaterialLeatherBlackUISwitch.addTarget(self, action: #selector(materialSwitchChanged), for: UIControl.Event.valueChanged)
         topCoversAndExtensionsMaterialLeatherBrownUISwitch.addTarget(self, action: #selector(materialSwitchChanged), for: UIControl.Event.valueChanged)
         topCoversAndExtensionsMaterialEva116UISwitch.addTarget(self, action: #selector(materialSwitchChanged), for: UIControl.Event.valueChanged)
         topCoversAndExtensionsMaterialEva18UISwitch.addTarget(self, action: #selector(materialSwitchChanged), for: UIControl.Event.valueChanged)
         topCoversAndExtensionsMaterialNcn116UISwitch.addTarget(self, action: #selector(materialSwitchChanged), for: UIControl.Event.valueChanged)
         topCoversAndExtensionsMaterialNcn18UISwitch.addTarget(self, action: #selector(materialSwitchChanged), for: UIControl.Event.valueChanged)
         topCoversAndExtensionsDiabetic116Plastazone18UISwitch.addTarget(self, action: #selector(materialSwitchChanged), for: UIControl.Event.valueChanged)
        
        topCoversAndExtensionsEVAUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        topCoversAndExtensionsBottomCoverMaterialEVA116UISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        topCoversAndExtensionsBottomCoverForefootReinforcementUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        topCoversAndExtensionsEvaArchFillLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        topCoversAndExtensionsEvaArchFillRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        topCoversAndExtensionsKorexUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        topCoversAndExtensionsMortonsExtensionLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        topCoversAndExtensionsMortonsExtensionRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        topCoversAndExtensionsReverseMortonsExtensionLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        topCoversAndExtensionsReverseMortonsExtensionRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        topCoversAndExtensionsMetatarsalPadLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        topCoversAndExtensionsMetatarsalPadRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        topCoversAndExtensionsMetatarsalBarLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        topCoversAndExtensionsMetatarsalBarRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        topCoversAndExtensionsHeelPadLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        topCoversAndExtensionsHeelPadRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        topCoversAndExtensionsHorseshoePadLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        topCoversAndExtensionsHorseshoePadRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        topCoversAndExtensionsDancersPadLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        topCoversAndExtensionsDancersPadRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        topCoversAndExtensionsKineticWedgeLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        topCoversAndExtensionsKineticWedgeRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
       
        topCoversAndExtensionsPoronUnderTopcover116.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        topCoversAndExtensionsPoronUnderTopcover18.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)

        
        topCoversAndExtensionsMedialArchReinforceLeftUISwitch.addTarget(self, action: #selector(clickLorRMedialArchRelief), for: UIControl.Event.valueChanged)
        topCoversAndExtensionsMedialArchReinformceRightUISwitch.addTarget(self, action: #selector(clickLorRMedialArchRelief), for: UIControl.Event.valueChanged)

        
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
            if (topCoversAndExtensionsTopCoverLengthPicker.selectedRow(inComponent: 0) == 2) {
                return topCoversAndExtensionsForefootExtensionExtensionLengthOnlySulcusPickerData.count;
            } else {
                return topCoversAndExtensionsForefootExtensionExtensionLengthPickerData.count;
            }
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
            if (topCoversAndExtensionsTopCoverLengthPicker.selectedRow(inComponent: 0) == 2) {
                pickerLabel?.text = topCoversAndExtensionsForefootExtensionExtensionLengthOnlySulcusPickerData[row];
            } else {
                pickerLabel?.text = topCoversAndExtensionsForefootExtensionExtensionLengthPickerData[row];
            }
            
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
    @IBOutlet var topCoversAndExtensionsPoronUnderTopcover18: UISwitch!
    @IBOutlet var topCoversAndExtensionsPoronUnderTopcover116: UISwitch!
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
    
    @IBOutlet var topCoversAndExtensionsMetHeadAccommodationsL1: UIButton!
    @IBOutlet var topCoversAndExtensionsMetHeadAccommodationsL2: UIButton!
    @IBOutlet var topCoversAndExtensionsMetHeadAccommodationsL3: UIButton!
    @IBOutlet var topCoversAndExtensionsMetHeadAccommodationsL4: UIButton!
    @IBOutlet var topCoversAndExtensionsMetHeadAccommodationsL5: UIButton!
    @IBOutlet var topCoversAndExtensionsMetHeadAccommodationsR1: UIButton!
    @IBOutlet var topCoversAndExtensionsMetHeadAccommodationsR2: UIButton!
    @IBOutlet var topCoversAndExtensionsMetHeadAccommodationsR3: UIButton!
    @IBOutlet var topCoversAndExtensionsMetHeadAccommodationsR4: UIButton!
    @IBOutlet var topCoversAndExtensionsMetHeadAccommodationsR5: UIButton!
    @IBOutlet var topCoversAndExtensionsNeuromaPadL1: UIButton!
    @IBOutlet var topCoversAndExtensionsNeuromaPadL2: UIButton!
    @IBOutlet var topCoversAndExtensionsNeuromaPadL3: UIButton!
    @IBOutlet var topCoversAndExtensionsNeuromaPadL4: UIButton!
    @IBOutlet var topCoversAndExtensionsNeuromaPadR1: UIButton!
    @IBOutlet var topCoversAndExtensionsNeuromaPadR2: UIButton!
    @IBOutlet var topCoversAndExtensionsNeuromaPadR3: UIButton!
    @IBOutlet var topCoversAndExtensionsNeuromaPadR4: UIButton!


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

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if (pickerView == topCoversAndExtensionsForefootExtensionMaterialPicker && pickerView.selectedRow(inComponent: 0) > 1) {
            if (topCoversAndExtensionsForefootExtensionExtensionLengthPicker.selectedRow(inComponent: 0) < 2) {
               
                if (topCoversAndExtensionsForefootExtensionThicknessPicker.selectedRow(inComponent: 0) == 0) {
                    topCoversAndExtensionsForefootExtensionThicknessPicker.selectRow(3, inComponent: 0, animated: true);

                }
               
                if (topCoversAndExtensionsTopCoverLengthPicker.selectedRow(inComponent: 0) == 3) {
                   
                    if (topCoversAndExtensionsForefootExtensionExtensionLengthPicker.selectedRow(inComponent: 0) == 0) {
                        topCoversAndExtensionsForefootExtensionExtensionLengthPicker.selectRow(3, inComponent: 0, animated: true);
                    }
                }
            }
        }
        
        changeBasedOnValues();
        
        

    }
    
    func changeBasedOnValues() {
        if (topCoversAndExtensionsTopCoverLengthPicker.selectedRow(inComponent: 0) == 1) {
            //Orthosis only, disable top covers
            topCoversAndExtensionsForefootExtensionExtensionLengthPicker.isUserInteractionEnabled = false;
            topCoversAndExtensionsForefootExtensionExtensionLengthPicker.alpha = 0.6;
            topCoversAndExtensionsForefootExtensionThicknessPicker.isUserInteractionEnabled = false;
            topCoversAndExtensionsForefootExtensionThicknessPicker.alpha = 0.6;
            topCoversAndExtensionsForefootExtensionMaterialPicker.isUserInteractionEnabled = false;
            topCoversAndExtensionsForefootExtensionMaterialPicker.alpha = 0.6;
            
        } else if (topCoversAndExtensionsForefootExtensionMaterialPicker.selectedRow(inComponent: 0) < 2){
            topCoversAndExtensionsForefootExtensionMaterialPicker.isUserInteractionEnabled = true;
            topCoversAndExtensionsForefootExtensionMaterialPicker.alpha = 1;
            topCoversAndExtensionsForefootExtensionExtensionLengthPicker.isUserInteractionEnabled = false;
            topCoversAndExtensionsForefootExtensionExtensionLengthPicker.alpha = 0.6;
            topCoversAndExtensionsForefootExtensionThicknessPicker.isUserInteractionEnabled = false;
            topCoversAndExtensionsForefootExtensionThicknessPicker.alpha = 0.6;
        } else {
            topCoversAndExtensionsForefootExtensionExtensionLengthPicker.isUserInteractionEnabled = true;
            topCoversAndExtensionsForefootExtensionExtensionLengthPicker.alpha = 1;
            topCoversAndExtensionsForefootExtensionThicknessPicker.isUserInteractionEnabled = true;
            topCoversAndExtensionsForefootExtensionThicknessPicker.alpha = 1;
            topCoversAndExtensionsForefootExtensionMaterialPicker.isUserInteractionEnabled = true;
            topCoversAndExtensionsForefootExtensionMaterialPicker.alpha = 1;
            
        }
        topCoversAndExtensionsForefootExtensionExtensionLengthPicker.reloadAllComponents();
        
    }
    
    @objc func clickLorRMedialArchRelief(mySwitch: UISwitch) {
        if (topCoversAndExtensionsEVAUISwitch.isOn == false &&
        topCoversAndExtensionsKorexUISwitch.isOn == false &&
            mySwitch.isOn) {
            topCoversAndExtensionsEVAUISwitch.isOn = true;
        }
        let parent = self.parent! as! ViewController;

        parent.changeValuesBasedOnChangedInput();

    }
    
    @objc func materialSwitchChanged(mySwitch: UISwitch) {
        let parent = self.parent! as! ViewController;
        
        if (mySwitch.isOn) {
            if (mySwitch != topCoversAndExtensionsMaterialVinylBlackUISwitch) {
                topCoversAndExtensionsMaterialVinylBlackUISwitch.isOn = false;
            }
            if (mySwitch != topCoversAndExtensionsMaterialVinylBronzeUISwitch) {
                topCoversAndExtensionsMaterialVinylBronzeUISwitch.isOn = false;
            }
            if (mySwitch != topCoversAndExtensionsMaterialVinylForestUISwitch) {
                topCoversAndExtensionsMaterialVinylForestUISwitch.isOn = false;
            }
            if (mySwitch != topCoversAndExtensionsMaterialLeatherBlackUISwitch) {
                topCoversAndExtensionsMaterialLeatherBlackUISwitch.isOn = false;
            }
            if (mySwitch != topCoversAndExtensionsMaterialLeatherBrownUISwitch) {
                topCoversAndExtensionsMaterialLeatherBrownUISwitch.isOn = false;
            }
            if (mySwitch != topCoversAndExtensionsMaterialEva116UISwitch) {
                topCoversAndExtensionsMaterialEva116UISwitch.isOn = false;
            }
            if (mySwitch != topCoversAndExtensionsMaterialEva18UISwitch) {
                topCoversAndExtensionsMaterialEva18UISwitch.isOn = false;
            }
            if (mySwitch != topCoversAndExtensionsMaterialNcn116UISwitch) {
                topCoversAndExtensionsMaterialNcn116UISwitch.isOn = false;
            }
            if (mySwitch != topCoversAndExtensionsMaterialNcn18UISwitch) {
                topCoversAndExtensionsMaterialNcn18UISwitch.isOn = false;
            }
            if (mySwitch != topCoversAndExtensionsDiabetic116Plastazone18UISwitch) {
                topCoversAndExtensionsDiabetic116Plastazone18UISwitch.isOn = false;
            }
        }
        parent.changeValuesBasedOnChangedInput();

    }

    
    @objc func switchChanged(mySwitch: UISwitch) {
//        if (mySwitch == newPractitionerSameAsBillingAddressUiSwitch) {
        let parent = self.parent! as! ViewController;

        parent.changeValuesBasedOnChangedInput();
    }
    
    @IBAction func clickCircle(button: UIButton) {
        if (button.accessibilityLabel != " ") {
            button.setBackgroundImage(UIImage(named: "checked.png"), for: UIControl.State.normal);
            button.accessibilityLabel = " ";
        } else {
            button.setBackgroundImage(UIImage(named: "Circle.png"), for: UIControl.State.normal);
            button.accessibilityLabel = "";
        }
        let parent = self.parent! as! ViewController;

        parent.changeValuesBasedOnChangedInput();

    }
    

}

