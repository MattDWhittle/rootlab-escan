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

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
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
        
        pickerLabel?.text = richieBraceMedialHeelSkivePickerViewValues[row]

        
        return pickerLabel!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let multiplier : CGFloat = 1 - ((1 - (screenSize.width / 2048)) / 2);

        richieBraceHeaderUILabel?.font = UIFont(name: "Helvetica Neue", size: 30);

        medialHeelSkiveUILabel?.font = UIFont(name: "Gil Sans-Bold", size: 48 * multiplier)
        
        richieBraceViewController = self;
    }
    
    @IBOutlet var richieBraceHeaderUILabel: UILabel!
    @IBOutlet var medialHeelSkiveUILabel: UILabel!
    @IBOutlet var medialHeelSkivePikerView: UIPickerView!

}
