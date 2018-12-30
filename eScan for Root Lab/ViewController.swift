//
//  ViewController.swift
//  eScan for Root Lab
//
//  Created by RahMat on 12/2/18.
//  Copyright © 2018 rootlab. All rights reserved.
//

//To talk about
//Return computer, explain no Mac OS
//Download app onto their ipad
//Show app, ask if we like how form is coming
//Ask about how we want Richie Brace form to work
//Talk about email server


//Accomodative EVA - grey out edit button on orthosis material
//PolyMax only can have a posting of Polypropylene
//Nothing else can have a posting of Polypropylene

//TODO
//Upload to git
//Finish Defaults to Form
//Finish Form to Order
//Finish Order to text
//reset picker views
//In order to save, need patient name, doctor name
//Richie Brace Form
//eScan
//Submit Form
//Email PDF
//Better Pictures
//Defaults
//Order a second pair, and reorder
//if left is checked anywhere, left scan is required
//if right is checked anywhere, right scan is required
//Add medical record number, not required, patient date.
//Default is left right
//Make a left right or bilateral
//Delete records after a year
//reorder button, if checked, scans aren't required, on scan page
//Accommodations - click and make dots - 5 spots, styloid,  - common spots, list spots accommodated, first med head, etc
//Pictures - picture of the foot, mark stuff
//Can take multiple pictures
//TODO Cannot save, fail startup


//(IN PROGRESS, need INT validation) make age wieght height gender required
//(IN PROGRESS) Left hand menu click on things and it works



//(TEST)Orthotics button label still off
// (TEST) First name,  last name Practitioner Page
// (TEST) First name,  last name 2 different boxes (Patient Page)


// (DONE) Add date order creation
// (DONE) weight pounds
// (DONE) height feet/inches



import UIKit
import CoreData

let openingPageIndex = 0;
let orderManagementPageIndex = 1;
let practitionerManagementPageIndex = 2;
let newPractitionerPageIndex = 3;
let patientManagementPageIndex = 4;

let newOrderTypePageIndex = 5;
let orthoticsFormPageIndex = 6;
let richieBraceFormPageIndex = 7;
let scanFormPageIndex = 8;
let reviewAndSubmitPageIndex = 9;

let orthosisMaterialPageIndex = 10;

let orthosisMaterialPolypropyleneIndex = 0;
let orthosisMaterialGraphiteCompositeIndex = 1;
let orthosisMaterialFiberglassCompositeIndex = 2;
let orthosisMaterialAcrylicIndex = 3;
let orthosisMaterialHighDensityProlyetheleneIndex = 4;

let screenSize = UIScreen.main.bounds

let genderPickerViewValues = ["Gender", "Male", "Female"]

var persistedData: [NSManagedObject] = []
var persistedDataDefaults: [NSManagedObject] = []

var order : Order = Order();
var allOrders : [Order] = [];
var currentOrder = 0
var defaults : Defaults? = nil;

let orthoticMateriaPickerData: [String] =
    ["Functional - Polypropylene", "Functional - PolyMax™", "Functional - Graphite", "Functional - Fiberglass", "Functional - Acrylic",
    "Sports - Multi-Sport™", "Sports - Multi-Sport-Plus™", "Sports - Soft-Sport™", "Sports - Soft-Sport-Flex™", "Sports - SSC™",
    "Dress - Men's Dress", "Dress - Women's Casual", "Dress - Women's High-Heel", "Dress - Hole-Heel™", "Dress - Cobra",
    "Specialty - Blake 25˚", "Specialty - Blake 35˚", "Specialty - Blake 45˚", "Specialty - Modified UCBL", "Specialty - Cusion-Flex™",
    "Specialty - Cushion-Flex-Control™", "Specialty - Diaba-Flex™", "Specialty - Diaba-Flex-Control™", "Specialty - Accommodative"];

let orthoticMateriaPickerMap: [Int] =
    [0, 0, 1, 2, 3,
     0, 0, 0, 4, 1,
     1, 1, 1, 0, 0,
     0, 0, 0, 0, 4,
     4, 4, 4, 5];


let anteriorWidthPickerData: [String] =
    ["Extra Narrow","Narrow","Standard","Wide","Extra wide", "Full width"];



let orthosisMaterialTypeLabels: [String] =
    ["Polypropylene","Graphite Composite (TL-2100)","Fiberglass Composite (TL-Silver)","Acrylic (Polydor)","High-Density Polyethylene (HDPE)"];

let orthosisPolypropyleneColorLabels: [String] =
    ["White","Natural"];

let orthosisPolypropyleneLabels: [String] =
    ["1/8","5/32","3/16","1/4"];

let orthosisGraphiteCompositeLabels: [String] =
    [".070 semi-flexible",".090 semi-rigid",".110 rigid",".110 ultra strength"];

let orthosisFiberglassCompositeLabels: [String] =
    [".085 semi-rigid",".110 rigid"];

let orthosisAcrylicColorLabels: [String] =
    ["Amber","Pink","Green"];

let orthosisAcrylicLabels: [String] =
    ["3mm","3.5mm","4mm","5mm"];

let orthosisHighDensityPolyetheleneLabels: [String] =
    ["2mm","3mm","4mm"];



class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var screenViewing = 0;
    var practitioners = [Practitioner]()
    var photos = [FootPhoto]()
    var defaultPractitioner : Practitioner?
    var pages = [UIView]();

    var backStack = [Int?]();
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (pickerView == patientGender) {
            return 3;
        } else if (pickerView == orthoticsFunctional) {
            return orthoticMateriaPickerData.count
        } else if (pickerView == practitionerPicker) {
            return practitioners.count;
        } else if (pickerView == orthoticSpecificationsAnteriorWidthLeftPicker) {
            return anteriorWidthPickerData.count;
        } else if (pickerView == orthoticSpecificationsAnteriorWidthRightPicker) {
            return anteriorWidthPickerData.count;
        } else if (pickerView == orthoticMaterialPicker) {
            let theMOI : MaterialOrderItem = order.orderMaterialItemList!.object(at: currentOrder) as! MaterialOrderItem;
            if (theMOI.orthoticsMaterialSelection == orthosisMaterialPolypropyleneIndex) {
                return orthosisPolypropyleneLabels.count;
            } else if (theMOI.orthoticsMaterialSelection == orthosisMaterialGraphiteCompositeIndex) {
                return orthosisGraphiteCompositeLabels.count;
            } else if (theMOI.orthoticsMaterialSelection == orthosisMaterialFiberglassCompositeIndex) {
                return orthosisFiberglassCompositeLabels.count;
            } else if (theMOI.orthoticsMaterialSelection == orthosisMaterialAcrylicIndex) {
                return orthosisAcrylicLabels.count;
            } else if (theMOI.orthoticsMaterialSelection == orthosisMaterialHighDensityProlyetheleneIndex) {
                return orthosisHighDensityPolyetheleneLabels.count;
            }
        }

        return 3;
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (pickerView == orthoticsFunctional) {
            let theMOI : MaterialOrderItem = order.orderMaterialItemList!.object(at: currentOrder) as! MaterialOrderItem;
            theMOI.orthoticsMaterialPickerSelection = Int16(row);
            theMOI.orthoticsMaterialSelection = Int16(orthoticMateriaPickerMap[Int(theMOI.orthoticsMaterialPickerSelection)]);
            orthosisMaterialButton.isEnabled = theMOI.orthoticsMaterialSelection != 5;
            resetDueToOrthosisTypeChange();
            if (row == 0) { //Polypropylene
                orthosisMaterialSelectionLabel.text = "semi-rigid polypropylene shell";
                
                orthosisSpecificationsHeelCupHeight14mmLeftUISwitch.isOn = true;
                orthosisSpecificationsHeelCupHeight14mmRightUISwitch.isOn = true;
                orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
                orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
                
                orthosisCorrectionsAndModificationsSelectionLabel.text = "intrinsic forefoot, vertical heel bisection";
                orthosisPostingSelectionLabel.text = "4/4 firm crepe, 8mm elevator";
                orthosisTopCoversAndExtensionsSelectionLabel.text = "orthosis length, vinyl";
            } else if (row == 1) { //PolyMax
                orthosisSpecificationsHeelCupHeight14mmLeftUISwitch.isOn = true;
                orthosisSpecificationsHeelCupHeight14mmRightUISwitch.isOn = true;
                orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
                orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            } else if (row == 2) {//Graphite
                orthosisSpecificationsHeelCupHeight14mmLeftUISwitch.isOn = true;
                orthosisSpecificationsHeelCupHeight14mmRightUISwitch.isOn = true;
                orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
                orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            } else if (row == 3) {//Fiberglass
                orthosisSpecificationsHeelCupHeight14mmLeftUISwitch.isOn = true;
                orthosisSpecificationsHeelCupHeight14mmRightUISwitch.isOn = true;
                orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
                orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            } else if (row == 4) { //Acrylic
                orthosisSpecificationsHeelCupHeight14mmLeftUISwitch.isOn = true;
                orthosisSpecificationsHeelCupHeight14mmRightUISwitch.isOn = true;
                orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
                orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            } else if (row == 5) { //Multi Sport
//                orthosisSpecificationsHeelCupHeight16mmLeftUISwitch.isOn = true;
//                orthosisSpecificationsHeelCupHeight16mmRightUISwitch.isOn = true;
                orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
                orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            } else if (row == 6) { //Multi Sport Plus
                //TODO how do I do 16
//                orthosisSpecificationsHeelCupHeight16mmLeftUISwitch.isOn = true;
//                orthosisSpecificationsHeelCupHeight16mmRightUISwitch.isOn = true;
                orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
                orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            } else if (row == 7) { //Soft Sport
//                orthosisSpecificationsHeelCupHeight16mmLeftUISwitch.isOn = true;
//                orthosisSpecificationsHeelCupHeight16mmRightUISwitch.isOn = true;
                orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
                orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            } else if (row == 8) { //Soft Sport Flex
//                orthosisSpecificationsHeelCupHeight16mmLeftUISwitch.isOn = true;
//                orthosisSpecificationsHeelCupHeight16mmRightUISwitch.isOn = true;
                orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
                orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            } else if (row == 9) { //SSC™

            } else if (row == 10) { //Men's Dress
                //TODO 12?
//                orthosisSpecificationsHeelCupHeight12mmLeftUISwitch.isOn = true;
//                orthosisSpecificationsHeelCupHeight12mmRightUISwitch.isOn = true;
                orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
                orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            } else if (row == 11) { //Women's Casual
                orthosisSpecificationsHeelCupHeight10mmLeftUISwitch.isOn = true;
                orthosisSpecificationsHeelCupHeight10mmRightUISwitch.isOn = true;
                orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(1, inComponent: 0, animated: false)
                orthoticSpecificationsAnteriorWidthRightPicker.selectRow(1, inComponent: 0, animated: false)
            } else if (row == 12) { //Women's High-Heel
                //TODO what is minimal heel cup?
//                orthosisSpecificationsHeelCupHeight10mmLeftUISwitch.isOn = true;
//                orthosisSpecificationsHeelCupHeight10mmRightUISwitch.isOn = true;
                orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(1, inComponent: 0, animated: false)
                orthoticSpecificationsAnteriorWidthRightPicker.selectRow(1, inComponent: 0, animated: false)
            } else if (row == 13) { //Hole-Heel™
                //TODO 10-12?
//                orthosisSpecificationsHeelCupHeight10mmLeftUISwitch.isOn = true;
//                orthosisSpecificationsHeelCupHeight10mmRightUISwitch.isOn = true;
                orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(1, inComponent: 0, animated: false)
                orthoticSpecificationsAnteriorWidthRightPicker.selectRow(1, inComponent: 0, animated: false)
            } else if (row == 14) { //Cobra
                //TODO 12?
//                orthosisSpecificationsHeelCupHeight12mmLeftUISwitch.isOn = true;
//                orthosisSpecificationsHeelCupHeight12mmRightUISwitch.isOn = true;
                orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(1, inComponent: 0, animated: false)
                orthoticSpecificationsAnteriorWidthRightPicker.selectRow(1, inComponent: 0, animated: false)

            } else if (row == 15) { //Blake 25
                orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(4, inComponent: 0, animated: false)
                orthoticSpecificationsAnteriorWidthRightPicker.selectRow(4, inComponent: 0, animated: false)
                orthosisSpecificationsOtherMedmmLeft.text="23";
                orthosisSpecificationsOtherMedmmRight.text="23";
                orthosisSpecificationsOtherLatmmLeft.text="21";
                orthosisSpecificationsOtherLatmmRight.text="21";
            } else if (row == 16) { //Blake 35˚
                orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(4, inComponent: 0, animated: false)
                orthoticSpecificationsAnteriorWidthRightPicker.selectRow(4, inComponent: 0, animated: false)
                orthosisSpecificationsOtherMedmmLeft.text="23";
                orthosisSpecificationsOtherMedmmRight.text="23";
                orthosisSpecificationsOtherLatmmLeft.text="21";
                orthosisSpecificationsOtherLatmmRight.text="21";
            } else if (row == 17) { //Blake 45˚
                orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(4, inComponent: 0, animated: false)
                orthoticSpecificationsAnteriorWidthRightPicker.selectRow(4, inComponent: 0, animated: false)
                orthosisSpecificationsOtherMedmmLeft.text="23";
                orthosisSpecificationsOtherMedmmRight.text="23";
                orthosisSpecificationsOtherLatmmLeft.text="21";
                orthosisSpecificationsOtherLatmmRight.text="21";
            } else if (row == 18) { //Modified UCBL
                //TODO 30?
                //                orthosisSpecificationsHeelCupHeight12mmLeftUISwitch.isOn = true;
                //                orthosisSpecificationsHeelCupHeight12mmRightUISwitch.isOn = true;

                orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(3, inComponent: 0, animated: false)
                orthoticSpecificationsAnteriorWidthRightPicker.selectRow(3, inComponent: 0, animated: false)
            } else if (row == 19) { //Cusion-Flex™
                orthosisSpecificationsHeelCupHeight14mmLeftUISwitch.isOn = true;
                orthosisSpecificationsHeelCupHeight14mmRightUISwitch.isOn = true;
                orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
                orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            } else if (row == 20) { //Cushion-Flex-Control™
                orthosisSpecificationsHeelCupHeight14mmLeftUISwitch.isOn = true;
                orthosisSpecificationsHeelCupHeight14mmRightUISwitch.isOn = true;
                orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
                orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            } else if (row == 21) { //Diaba-Flex™
                orthosisSpecificationsHeelCupHeight14mmLeftUISwitch.isOn = true;
                orthosisSpecificationsHeelCupHeight14mmRightUISwitch.isOn = true;
                orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
                orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
                
            } else if (row == 22) { //Diaba-Flex-Control™
                orthosisSpecificationsHeelCupHeight14mmLeftUISwitch.isOn = true;
                orthosisSpecificationsHeelCupHeight14mmRightUISwitch.isOn = true;
                orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
                orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            } else if (row == 23) { //Accommodative
                //TODO what is deep?
//                orthosisSpecificationsHeelCupHeight14mmLeftUISwitch.isOn = true;
//                orthosisSpecificationsHeelCupHeight14mmRightUISwitch.isOn = true;
                orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(5, inComponent: 0, animated: false)
                orthoticSpecificationsAnteriorWidthRightPicker.selectRow(5, inComponent: 0, animated: false)
                
            }
            
            

            
            readOrthosisSpecificationForm();
            let description = calculateOrthosisSpecificationDescriptionFromOrder();
            orthosisSpecificationsSelectionLabel.text = description;
        }
        //TODO fill in xxx here
        //print(myPickerViewData[row])
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
        if (pickerView == orthoticsFunctional) {
            pickerLabel?.text = orthoticMateriaPickerData[row]
        } else if (pickerView == patientGender) {
            pickerLabel?.text = genderPickerViewValues[row]
        } else if (pickerView == practitionerPicker) {
            pickerLabel?.text = practitioners[row].firstName! + " " + practitioners[row].lastName!
        } else if (pickerView == orthoticSpecificationsAnteriorWidthLeftPicker) {
            pickerLabel?.text = anteriorWidthPickerData[row]
        } else if (pickerView == orthoticSpecificationsAnteriorWidthRightPicker) {
            pickerLabel?.text = anteriorWidthPickerData[row]
        } else if (pickerView == orthoticMaterialPicker) {
            let theMOI : MaterialOrderItem = order.orderMaterialItemList!.object(at: currentOrder) as! MaterialOrderItem;
            if (theMOI.orthoticsMaterialSelection == orthosisMaterialPolypropyleneIndex) {
                pickerLabel?.text = orthosisPolypropyleneLabels[row];
            } else if (theMOI.orthoticsMaterialSelection == orthosisMaterialGraphiteCompositeIndex) {
                pickerLabel?.text = orthosisGraphiteCompositeLabels[row];
            } else if (theMOI.orthoticsMaterialSelection == orthosisMaterialFiberglassCompositeIndex) {
                pickerLabel?.text = orthosisFiberglassCompositeLabels[row];
            } else if (theMOI.orthoticsMaterialSelection == orthosisMaterialAcrylicIndex) {
                pickerLabel?.text = orthosisAcrylicLabels[row];
            } else if (theMOI.orthoticsMaterialSelection == orthosisMaterialHighDensityProlyetheleneIndex) {
                pickerLabel?.text = orthosisHighDensityPolyetheleneLabels[row];
            }
        } else {
            pickerLabel?.text = String(row);
        }

        
        return pickerLabel!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pages.append(openingPage)              // 0
        pages.append(orderManagement)          // 1
        pages.append(practitionerManagement)   // 2
        pages.append(newPractitioner)          // 3
        pages.append(patientManagement)        // 4

        pages.append(newOrderTypeForm)         // 5
        pages.append(orthoticsForm)            // 6
        pages.append(richieBraceForm)          // 7
        pages.append(scanForm)                 // 8
        pages.append(reviewAndSubmitForm)      // 9

        pages.append(orthoticsMaterialForm)               // 10
        pages.append(orthoticsCorrectionsForm)            // 11
        pages.append(orthoticsSpecificationsForm)         // 12
        pages.append(orthoticsPostingForm)                // 13
        pages.append(orthoticsTopCoversAndExtensionsForm) // 14
        pages.append(orthoticsChiefComplaintForm)         // 15
        pages.append(orthoticsRushOrderForm)              // 16
        pages.append(orthoticsCommentsInstructionsForm)   // 17
        pages.append(orthoticsAccommodationsAndAdditionsForm) // 18

        defaultPractitioner = nil;
        
        orderManagement.isHidden = true;
        practitionerManagement.isHidden = true;
        newPractitioner.isHidden = true;
        patientManagement.isHidden = true;
        newOrderTypeForm.isHidden = true;
        orthoticsForm.isHidden = true;
        orthoticsMaterialForm.isHidden = true;
        orthoticsCorrectionsForm.isHidden = true;
        orthoticsSpecificationsForm.isHidden = true;
        orthoticsPostingForm.isHidden = true;
        orthoticsTopCoversAndExtensionsForm.isHidden = true;
        orthoticsChiefComplaintForm.isHidden = true;
        orthoticsRushOrderForm.isHidden = true;
        orthoticsCommentsInstructionsForm.isHidden = true;
        orthoticsAccommodationsAndAdditionsForm.isHidden = true;
        scanForm.isHidden = true;
        reviewAndSubmitForm.isHidden = true;
        richieBraceForm.isHidden = true;
        areYouSureView.isHidden = true;
        menuView.isHidden = true;
        backNextView.isHidden = true;
        
        
        self.preferredContentSize.width = screenSize.width;
        self.preferredContentSize.height = screenSize.height;
        view.frame.size.width = screenSize.width;
        view.frame.size.height = screenSize.height;
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext

        order = Order.init(entity: NSEntityDescription.entity(forEntityName: "Order", in:context)!, insertInto: context);
        order.addToOrderMaterialItemList(MaterialOrderItem.init(entity: NSEntityDescription.entity(forEntityName: "MaterialOrderItem", in:context)!, insertInto: context));
        
        let multiplier : CGFloat = 1 - ((1 - (screenSize.width / 2048)) / 2);

        if (multiplier != 1) {
            newOrderButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 80 * multiplier)
            existingOrderButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 80 * multiplier)
            nextButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 80 * multiplier)
            backButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 80 * multiplier)
            orthoticsButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 80 * multiplier)
            richieBraceButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 80 * multiplier)
            editPractitionerButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 80 * multiplier)
            deletePractitionerButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 80 * multiplier)
            defaultPractitionerButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 80 * multiplier)
            orthosisMaterialButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisCorrectionsAndModificationsButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisSpecificationsButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisPostingButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisTopCoversAndExtensionsButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisChiefComplaintsDiagnosisButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisCommentsInstructionsButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisRushOrderButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)

            welcomeLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            newOrderLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            practitionerLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            practitionerNameLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            practitionerLastNameLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            patientLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            patientNameLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            patientLastNameLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            materialLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            materialNameLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            eScanLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            eScanNameLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            submitLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthoticMaterialTypeLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)

            newPractitionerLabel.font = UIFont(name: "Gil Sans-Bold", size: 100 * multiplier)
            newPractitionerNameLabel.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            newPractitionerShippingAddressLabel.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            newPractitionerBillingAddressLabel.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            
            patientDetailsLabel.font = UIFont(name: "Gil Sans-Bold", size: 100 * multiplier)
            patientDetailsNameLabel.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientDetailsAgeLabel.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientDetailsGenderLabel.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientDetailsHeightLabel.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientDetailsWeightLabel.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientDetailsShoeSizeLabel.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientDetailsShoeTypeLabel.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)

            orthosisMaterialLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisCorrectionsAndModificationsLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisSpecificationsLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisPostingLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisTopCoversAndExtensionsLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisChiefComplaintsDiagnosisLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisRushOrderLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisCommentsInstructionsLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)

            orthosisMaterialSelectionLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisCorrectionsAndModificationsSelectionLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisSpecificationsLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisPostingLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisTopCoversAndExtensionsSelectionLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisChiefComplaintsDiagnosisSelectionLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisRushOrderSelectionLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisCommentsInstructionsSelectionLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)

            
            
            whichPractitionerLabel.font = UIFont(name: "Gil Sans-Bold", size: 100 * multiplier)

            practitionerNameInput.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            practitionerLastNameInput.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            practitionerBillingAddressInput.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            practitionerShippingAddressInput.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientNameInput.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientLastNameInput.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientAgeInput.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientWeightInput.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientHeightInput.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientShoeSizeInput.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientShoeTypeInput.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)

            orthoticsPrescriptionLabel.font = UIFont(name: "Gil Sans-Bold", size: 100 * multiplier)
            orthosisTypeLabel.font = UIFont(name: "Gil Sans-Bold", size: 70 * multiplier)


            orthoticsFunctional.delegate = self;
            orthoticsFunctional.dataSource = self;
            patientGender.delegate = self;
            patientGender.dataSource = self;
            practitionerPicker.delegate = self;
            practitionerPicker.dataSource = self;

            //orthoticsMaterialPicker defined in storyboard
            
            for i in 0 ..<  orthoticsMaterialForm.subviews.count {
                let iSubview = orthoticsMaterialForm.subviews[i];
                if (iSubview is UILabel) {
                    (iSubview as! UILabel).font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
                }
            }

            for i in 0 ..<  orthoticsCorrectionsForm.subviews.count {
                let iSubview = orthoticsCorrectionsForm.subviews[i];
                if (iSubview is UILabel) {
                    (iSubview as! UILabel).font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
                }
            }

            for i in 0 ..<  orthoticsRushOrderForm.subviews.count {
                let iSubview = orthoticsRushOrderForm.subviews[i];
                if (iSubview is UILabel) {
                    (iSubview as! UILabel).font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
                }
            }

            for i in 0 ..<  orthoticsTopCoversAndExtensionsForm.subviews.count {
                let iSubview = orthoticsTopCoversAndExtensionsForm.subviews[i];
                if (iSubview is UILabel) {
                    (iSubview as! UILabel).font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
                }
            }
            
            for i in 0 ..<  orthoticsPostingForm.subviews.count {
                let iSubview = orthoticsPostingForm.subviews[i];
                if (iSubview is UILabel) {
                    (iSubview as! UILabel).font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
                }
            }
            
            for i in 0 ..<  orthoticsSpecificationsForm.subviews.count {
                let iSubview = orthoticsSpecificationsForm.subviews[i];
                if (iSubview is UILabel) {
                    (iSubview as! UILabel).font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
                }
            }
            
            for i in 0 ..<  newOrderTypeForm.subviews.count {
                let iSubview = newOrderTypeForm.subviews[i];
                if (iSubview is UILabel) {
                    (iSubview as! UILabel).font = UIFont(name: "Gil Sans-Bold", size: 100 * multiplier)
                }
            }
        }
        let fetchRequest =
            NSFetchRequest<NSManagedObject>(entityName: "Practitioner")
        do {
            persistedData = try context.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        if (persistedData.count == 0) {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            
            let newPractitioner = Practitioner.init(entity: NSEntityDescription.entity(forEntityName: "Practitioner", in:context)!, insertInto: context);
            newPractitioner.firstName = "New";
            newPractitioner.lastName = "Practitioner"
            
            do {
                try context.save();
                practitioners.append(newPractitioner);
                appDelegate.saveContext();
            } catch let error as NSError {
                //TODO Cannot save, fail startup
                print("Could not save. \(error), \(error.userInfo)")
            }
        } else {
            //Load the practitioners array
            for i in 0 ..<  persistedData.count {
                let practitionerFromStorage = persistedData[i]
                if (practitionerFromStorage is Practitioner) {
                    practitioners.append(practitionerFromStorage as! Practitioner);
                }

            }

        }
        
        
        let fetchRequestDefaults =
            NSFetchRequest<NSManagedObject>(entityName: "Defaults")
        
        do {
            persistedDataDefaults = try context.fetch(fetchRequestDefaults)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        if (persistedDataDefaults.count == 0) {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            defaults = Defaults.init(entity: NSEntityDescription.entity(forEntityName: "Defaults", in:context)!, insertInto: context);
            defaults?.defaultPractitioner = -1;
            do {
                try context.save();
                appDelegate.saveContext();
            } catch let error as NSError {
                //TODO Cannot save, fail startup
                print("Could not save. \(error), \(error.userInfo)")
            }
        } else {
            defaults = (persistedDataDefaults[0] as! Defaults);
            if (defaults!.defaultPractitioner != -1) {
                defaultPractitioner = practitioners[Int(defaults!.defaultPractitioner)];
            }

        }
        
        
    }

    @IBOutlet var openingPage: UIView!
    @IBOutlet var orderManagement: UIView!
    @IBOutlet var practitionerManagement: UIView!
    @IBOutlet var newPractitioner: UIView!
    @IBOutlet var patientManagement: UIView!
    @IBOutlet var newOrderTypeForm: UIView!
    @IBOutlet var orthoticsForm: UIView!
    @IBOutlet var orthoticsMaterialForm: UIView!
    @IBOutlet var orthoticsCorrectionsForm: UIView!
    @IBOutlet var orthoticsSpecificationsForm: UIView!
    @IBOutlet var orthoticsPostingForm: UIView!
    @IBOutlet var orthoticsTopCoversAndExtensionsForm: UIView!
    @IBOutlet var orthoticsCommentsInstructionsForm: UIView!
    @IBOutlet var orthoticsChiefComplaintForm: UIView!
    @IBOutlet var orthoticsRushOrderForm: UIView!
    @IBOutlet var orthoticsAccommodationsAndAdditionsForm: UIView!
    @IBOutlet var scanForm: UIView!
    @IBOutlet var reviewAndSubmitForm: UIView!
    @IBOutlet var richieBraceForm: UIView!
    @IBOutlet var areYouSureView: UIView!
    @IBOutlet var menuView: UIView!
    @IBOutlet var backNextView: UIView!

    @IBOutlet var practitionerFinishedUIImageView: UIImageView!
    @IBOutlet var patientFinishedUIImageView: UIImageView!
    @IBOutlet var prescriptionFinishedUIImageView: UIImageView!
    @IBOutlet var eScanFinishedUIImageView: UIImageView!
    @IBOutlet var submitFinishedUIImageView: UIImageView!

    
    @IBOutlet var newOrderButton: UIButton!
    @IBOutlet var existingOrderButton: UIButton!
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var backButton: UIButton!
    @IBOutlet var editPractitionerButton: UIButton!
    @IBOutlet var defaultPractitionerButton: UIButton!
    @IBOutlet var deletePractitionerButton: UIButton!
    @IBOutlet var orthoticsButton: UIButton!
    @IBOutlet var orthoticskButton: UIButton!
    @IBOutlet var richieBraceButton: UIButton!
    @IBOutlet var orthosisMaterialButton: UIButton!
    @IBOutlet var orthosisCorrectionsAndModificationsButton: UIButton!
    @IBOutlet var orthosisSpecificationsButton: UIButton!
    @IBOutlet var orthosisPostingButton: UIButton!
    @IBOutlet var orthosisTopCoversAndExtensionsButton: UIButton!
    @IBOutlet var orthosisChiefComplaintsDiagnosisButton: UIButton!
    @IBOutlet var orthosisRushOrderButton: UIButton!
    @IBOutlet var orthosisCommentsInstructionsButton: UIButton!
    @IBOutlet var okDeletePractitioner: UIButton!
    @IBOutlet var cancelDeletePractitioner: UIButton!

    
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var newOrderLabel: UILabel!
    @IBOutlet var practitionerLabel: UILabel!
    @IBOutlet var practitionerNameLabel: UILabel!
    @IBOutlet var practitionerLastNameLabel: UILabel!
    @IBOutlet var whichPractitionerLabel: UILabel!
    @IBOutlet var patientLabel: UILabel!
    @IBOutlet var patientNameLabel: UILabel!
    @IBOutlet var patientLastNameLabel: UILabel!
    @IBOutlet var materialLabel: UILabel!
    @IBOutlet var materialNameLabel: UILabel!
    @IBOutlet var eScanLabel: UILabel!
    @IBOutlet var eScanNameLabel: UILabel!
    @IBOutlet var submitLabel: UILabel!
    @IBOutlet var newPractitionerLabel: UILabel!
    @IBOutlet var newPractitionerNameLabel: UILabel!
    @IBOutlet var newPractitionerShippingAddressLabel: UILabel!
    @IBOutlet var newPractitionerBillingAddressLabel: UILabel!
    @IBOutlet var patientDetailsLabel: UILabel!
    @IBOutlet var patientDetailsNameLabel: UILabel!
    @IBOutlet var patientDetailsAgeLabel: UILabel!
    @IBOutlet var patientDetailsGenderLabel: UILabel!
    @IBOutlet var patientDetailsWeightLabel: UILabel!
    @IBOutlet var patientDetailsHeightLabel: UILabel!
    @IBOutlet var patientDetailsShoeSizeLabel: UILabel!
    @IBOutlet var patientDetailsShoeTypeLabel: UILabel!
    @IBOutlet var orthoticsPrescriptionLabel: UILabel!
    @IBOutlet var orthosisTypeLabel: UILabel!
    @IBOutlet var orthosisMaterialLabel: UILabel!
    @IBOutlet var orthosisCorrectionsAndModificationsLabel: UILabel!
    @IBOutlet var orthosisSpecificationsLabel: UILabel!
    @IBOutlet var orthosisPostingLabel: UILabel!
    @IBOutlet var orthosisTopCoversAndExtensionsLabel: UILabel!
    @IBOutlet var orthosisChiefComplaintsDiagnosisLabel: UILabel!
    @IBOutlet var orthosisRushOrderLabel: UILabel!
    @IBOutlet var orthosisCommentsInstructionsLabel: UILabel!
    @IBOutlet var orthosisMaterialSelectionLabel: UILabel!
    @IBOutlet var orthosisCorrectionsAndModificationsSelectionLabel: UILabel!
    @IBOutlet var orthosisSpecificationsSelectionLabel: UILabel!
    @IBOutlet var orthosisPostingSelectionLabel: UILabel!
    @IBOutlet var orthosisTopCoversAndExtensionsSelectionLabel: UILabel!
    @IBOutlet var orthosisChiefComplaintsDiagnosisSelectionLabel: UILabel!
    @IBOutlet var orthosisRushOrderSelectionLabel: UILabel!
    @IBOutlet var orthosisCommentsInstructionsSelectionLabel: UILabel!
    @IBOutlet var orthoticMaterialTypeLabel: UILabel!
    @IBOutlet var areYouSureLabel: UILabel!
    @IBOutlet var areYouSureDeletePractitioner: UILabel!

    
    @IBOutlet var practitionerNameInput: UITextField!
    @IBOutlet var practitionerLastNameInput: UITextField!
    @IBOutlet var practitionerBillingAddressInput: UITextField!
    @IBOutlet var practitionerShippingAddressInput: UITextField!
    @IBOutlet var patientNameInput: UITextField!
    @IBOutlet var patientLastNameInput: UITextField!
    @IBOutlet var patientAgeInput: UITextField!
    @IBOutlet var patientHeightInput: UITextField!
    @IBOutlet var patientWeightInput: UITextField!
    @IBOutlet var patientShoeSizeInput: UITextField!
    @IBOutlet var patientShoeTypeInput: UITextField!
    @IBOutlet var correctionsAndModificationsCastOrientationInvertedLeft: UITextField!
    @IBOutlet var correctionsAndModificationsCastOrientationInvertedRight: UITextField!
    @IBOutlet var correctionsAndModificationsCastOrientationEvertedLeft: UITextField!
    @IBOutlet var correctionsAndModificationsCastOrientationEvertedRight: UITextField!
    @IBOutlet var correctionsAndModificationsPlantarFaciaAccomRight: UITextField!
    @IBOutlet var correctionsAndModificationsPlantarFaciaAccomLeft: UITextField!
    @IBOutlet var correctionsAndModificationsStyloidAccomRight: UITextField!
    @IBOutlet var correctionsAndModificationsStyloidAccomLeft: UITextField!
    @IBOutlet var correctionsAndModificationsAsMarkedOnCastRight: UITextField!
    @IBOutlet var correctionsAndModificationsAsMarkedOnCastLeft: UITextField!
    @IBOutlet var correctionsAndModificationsAddLatHeelExpansionRight: UITextField!
    @IBOutlet var correctionsAndModificationsAddLatHeelExpansionLeft: UITextField!
    @IBOutlet var correctionsAndModificationsMedialHeelSkiveRight: UITextField!
    @IBOutlet var correctionsAndModificationsMedialHeelSkiveLeft: UITextField!
    @IBOutlet var orthosisSpecificationsOtherMedmmLeft: UITextField!
    @IBOutlet var orthosisSpecificationsOtherMedmmRight: UITextField!
    @IBOutlet var orthosisSpecificationsOtherLatmmLeft: UITextField!
    @IBOutlet var orthosisSpecificationsOtherLatmmRight: UITextField!
    @IBOutlet var postingHeelLiftLeft: UITextField!
    @IBOutlet var postingHeelLiftRight: UITextField!
    @IBOutlet var postingRearfootPostMotionOtherDegreesLeft: UITextField!
    @IBOutlet var postingRearfootPostMotionOtherDegreesRight: UITextField!
    @IBOutlet var postingRearfootPostingElevatorOthermmLeft: UITextField!
    @IBOutlet var postingRearfootPostingElevatorOthermmRight: UITextField!

    @IBOutlet var escanScene: UIViewController!
    @IBOutlet var richieBraceScene: UIViewController!

    
    @IBOutlet var patientGender: UIPickerView!
    @IBOutlet var orthoticsFunctional: UIPickerView!
    @IBOutlet var practitionerPicker: UIPickerView!
    @IBOutlet var orthoticMaterialPicker: UIPickerView!
    @IBOutlet var orthoticSpecificationsAnteriorWidthLeftPicker: UIPickerView!
    @IBOutlet var orthoticSpecificationsAnteriorWidthRightPicker: UIPickerView!

    @IBOutlet var correctionsAndModificationsCastOrientationVerticalLeftUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsCastOrientationVerticalRightUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsForefootCorrectionTypeExtrinsicLeftUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsForefootCorrectionTypeExtrinsicRightUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsNoFillerLeftUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsNoFillerRightUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsMedialArchFillIncreasedLeftUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsMedialArchFillIncreasedRightUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsMedialArchFillStandardLeftUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsMedialArchFillStandardRightUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsMedialArchFillDecreasedLeftUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsMedialArchFillDecreasedRightUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsMedialArchFillMinimalLeftUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsMedialArchFillMinimalRightUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsHeelCupHeight10mmLeftUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsHeelCupHeight10mmRightUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsHeelCupHeight14mmLeftUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsHeelCupHeight14mmRightUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsHeelCupHeight18mmLeftUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsHeelCupHeight18mmRightUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeftUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsOtherShellConfigurationsLateralFlangeRightUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeftUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsOtherShellConfigurationsWideArchProfileRightUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsOtherShellConfigurationsFitToEnclosedShoeUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostMotion4DegreesMotionLeftUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostMotion4DegreesMotionRightUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostMotion0DegreesMotionLeftUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostMotion0DegreesMotionRightUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostingElevator4mmRightUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostingElevator4mmLeftUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostingElevator8mmRightUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostingElevator8mmLeftUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostOptionsMedialPostFlangeRightUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostOptionsMedialPostFlangeLeftUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostOptionsLateralPostFlangeRightUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostOptionsLateralPostFlangeLeftUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostOptionsLongPostFlangeRightUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostOptionsLongPostFlangeLeftUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostOptionsShortPostFlangeRightUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostOptionsShortPostFlangeLeftUISwitch: UISwitch!
    @IBOutlet var postingNonCorrectiveForefootPostFullWidthRightUISwitch: UISwitch!
    @IBOutlet var postingNonCorrectiveForefootPostFullWidthLeftUISwitch: UISwitch!
    @IBOutlet var postingNonCorrectiveForefootPostMedialCornerRightUISwitch: UISwitch!
    @IBOutlet var postingNonCorrectiveForefootPostMedialCornerLeftUISwitch: UISwitch!
    @IBOutlet var postingNonCorrectiveForefootPostLateralCornerRightUISwitch: UISwitch!
    @IBOutlet var postingNonCorrectiveForefootPostLateralCornerWidthLeftUISwitch: UISwitch!
    @IBOutlet var topCoversAndExtensionsBottomCoverMaterialEVA116UISwitch: UISwitch!
    @IBOutlet var rushOrder2DayTurnaroundUISwitch: UISwitch!
    @IBOutlet var rushOrderNextDayTurnaroundUISwitch: UISwitch!
    @IBOutlet var rushOrderRequestedOnOrBeforeUISwitch: UISwitch!
    @IBOutlet var rushOrderPleaseSendRxFormsUISwitch: UISwitch!
    @IBOutlet var rushOrderPleaseSendAddressLabelsUISwitch: UISwitch!
    @IBOutlet var rushOrderPleaseSendPrepaidLabelsUISwitch: UISwitch!
    @IBOutlet var rushOrderPleaseSendSmallBoxesUISwitch: UISwitch!
    @IBOutlet var rushOrderPleaseSendLargeBoxesUISwitch: UISwitch!
    @IBOutlet var rushOrderStorePositiveModelsFor60DaysUISwitch: UISwitch!

    
    
    let openingPageIndex = 0;
    let orderManagementPageIndex = 1;
    let practitionerManagementPageIndex = 2;
    let newPractitionerPageIndex = 3;
    let patientManagementPageIndex = 4;
    
    let newOrderTypePageIndex = 5;
    let orthoticsFormPageIndex = 6;
    let richieBraceFormPageIndex = 7;
    let scanFormPageIndex = 8;
    let reviewAndSubmitPageIndex = 9;

    let orthoticsMaterialFormPageIndex = 10;
    let orthoticsCorrectionsFormPageIndex = 11;
    let orthoticsSpecificationsFormPageIndex = 12;
    let orthoticsPostingFormPageIndex = 13;
    let orthoticsTopCoversAndExtensionsFormPageIndex = 14;
    let orthoticsCommentsInstructionsFormPageIndex = 15;
    let orthoticsChiefComplaintFormPageIndex = 16;
    let orthoticsRushOrderFormPageIndex = 17;
    let orthoticsAccommodationsAndAdditionsFormPageIndex = 18;

    @IBAction func NewOrderAction(sender: UIButton){
        if (defaultPractitioner != nil) {
            practitionerNameLabel.text = (defaultPractitioner!.firstName)! + " " + (defaultPractitioner!.lastName)!;
            changePageTo(pageTo: patientManagementPageIndex);
        } else if (practitioners.count < 2) {
            changePageTo(pageTo: newPractitionerPageIndex);
        } else {
            changePageTo(pageTo: practitionerManagementPageIndex);
        }
    }
    
    @IBAction func ExistingOrderAction(sender: UIButton){
        changePageTo(pageTo: orderManagementPageIndex);
    }
    @IBAction func ClickBackAction(sender: UIButton){
        changePageTo(pageTo: (backStack.popLast())!);
    }
    @IBAction func ClickNextAction(sender: UIButton){
        if (screenViewing == practitionerManagementPageIndex) {
            if (practitionerPicker.selectedRow(inComponent: 0) == 0) {
                changePageTo(pageTo: newPractitionerPageIndex);
            } else {
                practitionerFinishedUIImageView.image = UIImage(named: "checked.png");
                changePageTo(pageTo: patientManagementPageIndex);
                let thePractitioner = practitioners[practitionerPicker.selectedRow(inComponent: 0)];
                practitionerNameLabel.text = thePractitioner.firstName! + " " + thePractitioner.lastName!;
            }
        } else if (screenViewing == newPractitionerPageIndex) {
            changePageTo(pageTo: patientManagementPageIndex);
            practitionerNameLabel.text = practitionerNameInput.text! + " " + practitionerLastNameInput.text!;
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            let thePractitioner = Practitioner.init(entity: NSEntityDescription.entity(forEntityName: "Practitioner", in:context)!, insertInto: context);

            thePractitioner.firstName = practitionerNameInput.text;
            thePractitioner.lastName = practitionerLastNameInput.text;
            thePractitioner.shippingAddress = practitionerShippingAddressInput.text;
            thePractitioner.billingAddress = practitionerBillingAddressInput.text;
            appDelegate.saveContext()

            practitioners.append(thePractitioner);
            practitionerPicker.reloadAllComponents();
            
            practitionerFinishedUIImageView.image = UIImage(named: "checked.png");

        } else if (screenViewing == patientManagementPageIndex) {
            let firstName = patientNameInput.text;
            let lastName = patientLastNameInput.text;
            
            //TODO make these 4 required
            let age = patientAgeInput.text;
            let height = patientHeightInput.text;
            let weight = patientWeightInput.text;
            if (!((firstName?.isEmpty)!) && !((lastName?.isEmpty)!)
                && !((age?.isEmpty)!) && !((height?.isEmpty)!)
                && !((weight?.isEmpty)!)) {
                patientFinishedUIImageView.image = UIImage(named: "checked.png");
            }
            changePageTo(pageTo: newOrderTypePageIndex);
            
            if (!((firstName?.isEmpty)!) && !((lastName?.isEmpty)!)) {
                order.orderPatient?.firstName = firstName;
                order.orderPatient?.lastName = lastName;
                order.orderPatient?.age = Int16(age!) ?? 0;
                order.orderPatient?.height = Int16(height!) ?? 0;
                order.orderPatient?.weight = Int16(weight!) ?? 0;
                order.orderPatient?.shoeSize = Int16(patientShoeSizeInput!.text!) ?? 0;
                order.orderPatient?.shoeType = patientShoeTypeInput.text;
                patientNameLabel.text = patientNameInput.text! + " " + patientLastNameInput.text!;
            }

        } else if (screenViewing == orthoticsFormPageIndex) {
            changePageTo(pageTo: scanFormPageIndex);
            materialNameLabel.text = "Orthotics";
        } else if (screenViewing == richieBraceFormPageIndex) {
            changePageTo(pageTo: scanFormPageIndex);
            materialNameLabel.text = "Richie Brace";
        } else if (screenViewing == scanFormPageIndex) {
            changePageTo(pageTo: reviewAndSubmitPageIndex);
        } else if (screenViewing == reviewAndSubmitPageIndex) {
            changePageTo(pageTo: openingPageIndex);
            practitionerNameLabel.text = "No Name";
            patientNameLabel.text = "No Name";
            practitionerNameInput.text = "";
            practitionerBillingAddressInput.text = "";
            practitionerShippingAddressInput.text = "";
            patientNameInput.text = "";
            patientAgeInput.text = "";
            patientHeightInput.text = "";
            patientWeightInput.text = "";
            patientShoeSizeInput.text = "";
            patientShoeTypeInput.text = "";
        } else if (screenViewing == orthoticsMaterialFormPageIndex) {
            changePageTo(pageTo: orthoticsFormPageIndex);
        } else if (screenViewing == orthoticsCorrectionsFormPageIndex) {
            readCorrectionsAndModificationsForm();
            let description = calculateCorrectionsAndModificationsDescriptionFromOrder();
            orthosisCorrectionsAndModificationsSelectionLabel.text = description;
            changePageTo(pageTo: orthoticsFormPageIndex);
        } else if (screenViewing == orthoticsSpecificationsFormPageIndex) {
            readOrthosisSpecificationForm();
            let description = calculateOrthosisSpecificationDescriptionFromOrder();
            orthosisSpecificationsSelectionLabel.text = description;
            changePageTo(pageTo: orthoticsFormPageIndex);
        } else if (screenViewing == orthoticsPostingFormPageIndex) {
            readPostingForm();
            let description = calculatePostingDescriptionFromOrder();
            orthosisPostingSelectionLabel.text = description;
            changePageTo(pageTo: orthoticsFormPageIndex);
        } else if (screenViewing == orthoticsTopCoversAndExtensionsFormPageIndex) {
            changePageTo(pageTo: orthoticsFormPageIndex);
        } else if (screenViewing == orthoticsChiefComplaintFormPageIndex) {
            changePageTo(pageTo: orthoticsFormPageIndex);
        } else if (screenViewing == orthoticsRushOrderFormPageIndex) {
            changePageTo(pageTo: orthoticsFormPageIndex);
        } else if (screenViewing == orthoticsAccommodationsAndAdditionsFormPageIndex) {
            changePageTo(pageTo: orthoticsFormPageIndex);
        }
        
    }

    @IBAction func ClickEditPractitioner(sender: UIButton){
        changePageTo(pageTo: newPractitionerPageIndex);
        practitionerNameInput.text = practitionerNameInput.text;
        practitionerBillingAddressInput.text = practitionerShippingAddressInput.text;
        practitionerShippingAddressInput.text = practitionerBillingAddressInput.text;
        
    }

    @IBAction func ClickDeletePractitioner(sender: UIButton){
        
    }

    @IBAction func ClickDefaultPractitioner(sender: UIButton){
        practitionerNameLabel.text = (defaultPractitioner!.firstName)! + " " + (defaultPractitioner!.lastName)!;
        changePageTo(pageTo: patientManagementPageIndex);
        defaults?.defaultPractitioner = Int16(practitionerPicker.selectedRow(inComponent: 0));
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext

        do {
            try context.save();
            appDelegate.saveContext();
        } catch let error as NSError {
            //TODO Cannot save, fail startup
            print("Could not save. \(error), \(error.userInfo)")
        }
        defaultPractitioner = practitioners[practitionerPicker.selectedRow(inComponent: 0)];
    }

    @IBAction func ClickOrthoticsForm(sender: UIButton){
        changePageTo(pageTo: orthoticsFormPageIndex);
        materialNameLabel.text = "> Orthotics";
    }

    @IBAction func ClickRichieBraceForm(sender: UIButton){
        changePageTo(pageTo: richieBraceFormPageIndex);
        materialNameLabel.text = "> Richie Brace";
    }
    
    @IBAction func ClickOrthosisMaterial(sender: UIButton){
        let theMOI : MaterialOrderItem = order.orderMaterialItemList!.object(at: currentOrder) as! MaterialOrderItem;
        orthoticMaterialTypeLabel.text = orthosisMaterialTypeLabels[Int(theMOI.orthoticsMaterialSelection)];
        orthoticMaterialPicker.reloadAllComponents();
        changePageTo(pageTo: orthoticsMaterialFormPageIndex)
    }
    
    
    @IBAction func ClickOrthosisCorrectionsAndModifications(sender: UIButton){
        changePageTo(pageTo: orthoticsCorrectionsFormPageIndex)
    }
    
    @IBAction func ClickOrthosisSpecifications(sender: UIButton){
        changePageTo(pageTo: orthoticsSpecificationsFormPageIndex)
    }
    
    @IBAction func ClickOrthosisPosting(sender: UIButton){
        changePageTo(pageTo: orthoticsPostingFormPageIndex)
    }
    
    @IBAction func ClickOrthosisTopCoversAndExtensions(sender: UIButton){
        changePageTo(pageTo: orthoticsTopCoversAndExtensionsFormPageIndex)
    }
    
    @IBAction func ClickOrthosisChiefComplaintsDiagnosis(sender: UIButton){
        changePageTo(pageTo: orthoticsChiefComplaintFormPageIndex)
    }
    
    @IBAction func ClickOrthosisRushOrder(sender: UIButton){
        changePageTo(pageTo: orthoticsRushOrderFormPageIndex)
    }
    
    @IBAction func ClickOrthosisCommentsInstructions(sender: UIButton){
        changePageTo(pageTo: orthoticsCommentsInstructionsFormPageIndex)
    }
    
    @IBAction func ClickOrthosisAccommodationsAndAdditions(sender: UIButton){
        changePageTo(pageTo: orthoticsAccommodationsAndAdditionsFormPageIndex)
    }
    
    @IBAction func ClickNewOrderButton(sender: UIButton){
        changePageTo(pageTo: orderManagementPageIndex)
    }
    
    @IBAction func ClickPractitionerManagementButton(sender: UIButton){
        changePageTo(pageTo: practitionerManagementPageIndex)
    }
    
    @IBAction func ClickPatientManagementButton(sender: UIButton){
        changePageTo(pageTo: patientManagementPageIndex)
    }
    
    @IBAction func ClickOrderManagementButton(sender: UIButton){
        changePageTo(pageTo: newOrderTypePageIndex)
    }

    @IBAction func ClickOkDeletePractitioner(sender: UIButton){
        areYouSureView.isHidden = true;
        let selectedRow = practitionerPicker.selectedRow(inComponent: 0);
        if (selectedRow > 0) {
            //TODO add a practitioner equals here
//            if (defaultPractitioner! == practitioners[selectedRow]) {
//                defaultPractitioner = nil;
//            }
            practitioners.remove(at: practitionerPicker.selectedRow(inComponent: 0));
        }
    }

    @IBAction func ClickCancelDeletePractitioner(sender: UIButton){
        areYouSureView.isHidden = true;
    }


    func changePageTo(pageTo: Int?) {
        clearAllCarrotsFromLables();
        pages[screenViewing].isHidden = true;
        backStack.append(screenViewing);
        screenViewing = pageTo!;
        pages[screenViewing].isHidden = false;

        menuView.isHidden = screenViewing == 0;
        nextButton.isHidden = screenViewing == newOrderTypePageIndex;
        backNextView.isHidden = screenViewing == 0;
        setCarrot();
    }

    func setCarrot() {
        if (screenViewing == 2) {
            practitionerLabel.text = "> Practitioner";
        } else if (screenViewing == 3) {
            practitionerNameLabel.text = "> New";
        } else if (screenViewing == 4) {
            patientLabel.text = "> Patient";
        } else if (screenViewing == 5) {
            materialLabel.text = "> Prescription";
        } else if (screenViewing == 8) {
            eScanLabel.text = "> eScan";
        } else if (screenViewing == 9) {
            submitLabel.text = "> Submit";
        }
    }

    
    func clearAllCarrotsFromLables() {
        newOrderLabel.text = "New Order";
        practitionerLabel.text = "Practitioner";
        patientLabel.text = "Patient";
        materialLabel.text = "Prescription";
        eScanLabel.text = "eScan";
        submitLabel.text = "Submit";

    }

    func readPostingForm() {
        order.postingRearfootPostingElevator4mmLeft = postingRearfootPostingElevator4mmLeftUISwitch.isOn;
        order.postingRearfootPostingElevator8mmLeft = postingRearfootPostingElevator8mmLeftUISwitch.isOn;
        order.postingRearfootPostingElevator4mmRight = postingRearfootPostingElevator8mmRightUISwitch.isOn;
        order.postingRearfootPostingElevator8mmRight =
            postingRearfootPostingElevator8mmRightUISwitch.isOn;
        
        order.postingRearfootPostMotion0DegreesMotionLeft =
              postingRearfootPostMotion0DegreesMotionLeftUISwitch.isOn;
        order.postingRearfootPostMotion0DegreesMotionRight =
            postingRearfootPostMotion0DegreesMotionRightUISwitch.isOn;
        order.postingRearfootPostMotion4DegreesMotionLeft =
            postingRearfootPostMotion4DegreesMotionLeftUISwitch.isOn;
        order.postingRearfootPostMotion4DegreesMotionRight =
            postingRearfootPostMotion4DegreesMotionRightUISwitch.isOn;
        
        order.postingRearfootPostOptionsLongPostFlangeLeft =
            postingRearfootPostOptionsLongPostFlangeLeftUISwitch.isOn;
        order.postingRearfootPostOptionsLongPostFlangeRight =
            postingRearfootPostOptionsLongPostFlangeRightUISwitch.isOn;
        order.postingRearfootPostOptionsShortPostFlangeLeft =
            postingRearfootPostOptionsShortPostFlangeLeftUISwitch.isOn;
        order.postingRearfootPostOptionsShortPostFlangeRight =
            postingRearfootPostOptionsShortPostFlangeRightUISwitch.isOn;
        order.postingRearfootPostOptionsLateralPostFlangeLeft =
            postingRearfootPostOptionsLateralPostFlangeLeftUISwitch.isOn;
        order.postingRearfootPostOptionsLateralPostFlangeRight =
            postingRearfootPostOptionsLateralPostFlangeRightUISwitch.isOn;
        order.postingRearfootPostOptionsMedialPostFlangeLeft =
            postingRearfootPostOptionsMedialPostFlangeLeftUISwitch.isOn;
        order.postingRearfootPostOptionsMedialPostFlangeRight =
            postingRearfootPostOptionsMedialPostFlangeRightUISwitch.isOn;

        order.postingNonCorrectiveForefootPostFullWidthLeft =
            postingNonCorrectiveForefootPostFullWidthLeftUISwitch.isOn;
        order.postingNonCorrectiveForefootPostFullWidthRight =
            postingNonCorrectiveForefootPostFullWidthRightUISwitch.isOn;
        order.postingNonCorrectiveForefootPostMedialCornerLeft =
            postingNonCorrectiveForefootPostMedialCornerLeftUISwitch.isOn;
        order.postingNonCorrectiveForefootPostMedialCornerRight =
            postingNonCorrectiveForefootPostMedialCornerRightUISwitch.isOn;
        order.postingNonCorrectiveForefootPostLateralCornerRight =
            postingNonCorrectiveForefootPostLateralCornerRightUISwitch.isOn;
        order.postingNonCorrectiveForefootPostLateralCornerWidthLeft =
            postingNonCorrectiveForefootPostLateralCornerWidthLeftUISwitch.isOn;


    }
    
    func setPostingFormFromOrder() {
        postingRearfootPostingElevator4mmLeftUISwitch.isOn =
            order.postingRearfootPostingElevator4mmLeft;
        postingRearfootPostingElevator8mmLeftUISwitch.isOn =
            order.postingRearfootPostingElevator8mmLeft;
        postingRearfootPostingElevator8mmRightUISwitch.isOn =
            order.postingRearfootPostingElevator4mmRight;
        postingRearfootPostingElevator8mmRightUISwitch.isOn =
            order.postingRearfootPostingElevator8mmRight;

        
        postingRearfootPostMotion0DegreesMotionLeftUISwitch.isOn =
            order.postingRearfootPostMotion0DegreesMotionLeft;
        postingRearfootPostMotion0DegreesMotionRightUISwitch.isOn =
            order.postingRearfootPostMotion0DegreesMotionRight;
        postingRearfootPostMotion4DegreesMotionLeftUISwitch.isOn =
            order.postingRearfootPostMotion4DegreesMotionLeft;
        postingRearfootPostMotion4DegreesMotionRightUISwitch.isOn =
            order.postingRearfootPostMotion4DegreesMotionRight;
    
        postingRearfootPostOptionsLongPostFlangeLeftUISwitch.isOn =
            order.postingRearfootPostOptionsLongPostFlangeLeft;
        postingRearfootPostOptionsLongPostFlangeRightUISwitch.isOn =
            order.postingRearfootPostOptionsLongPostFlangeRight;
        postingRearfootPostOptionsShortPostFlangeLeftUISwitch.isOn =
            order.postingRearfootPostOptionsShortPostFlangeLeft;
        postingRearfootPostOptionsShortPostFlangeRightUISwitch.isOn =
            order.postingRearfootPostOptionsShortPostFlangeRight;
        postingRearfootPostOptionsLateralPostFlangeLeftUISwitch.isOn =
            order.postingRearfootPostOptionsLateralPostFlangeLeft;
        postingRearfootPostOptionsLateralPostFlangeRightUISwitch.isOn =
            order.postingRearfootPostOptionsLateralPostFlangeRight;
        postingRearfootPostOptionsMedialPostFlangeLeftUISwitch.isOn =
            order.postingRearfootPostOptionsMedialPostFlangeLeft;
        postingRearfootPostOptionsMedialPostFlangeRightUISwitch.isOn =
            order.postingRearfootPostOptionsMedialPostFlangeRight;
    
        postingNonCorrectiveForefootPostFullWidthLeftUISwitch.isOn =
            order.postingNonCorrectiveForefootPostFullWidthLeft;
        postingNonCorrectiveForefootPostFullWidthRightUISwitch.isOn =
            order.postingNonCorrectiveForefootPostFullWidthRight;
        postingNonCorrectiveForefootPostMedialCornerLeftUISwitch.isOn =
            order.postingNonCorrectiveForefootPostMedialCornerLeft;
        postingNonCorrectiveForefootPostMedialCornerRightUISwitch.isOn =
            order.postingNonCorrectiveForefootPostMedialCornerRight;
        postingNonCorrectiveForefootPostLateralCornerRightUISwitch.isOn =
            order.postingNonCorrectiveForefootPostLateralCornerRight;
        postingNonCorrectiveForefootPostLateralCornerWidthLeftUISwitch.isOn =
            order.postingNonCorrectiveForefootPostLateralCornerWidthLeft;
        
        
    }
    
    func readRushOrderForm() {
        order.rushOrder2DayTurnaround =
            rushOrder2DayTurnaroundUISwitch.isOn;
        order.rushOrderNextDayTurnaround =
            rushOrderNextDayTurnaroundUISwitch.isOn;
        order.rushOrderPleaseSendRxForms =
            rushOrderPleaseSendRxFormsUISwitch.isOn;
        order.rushOrderRequestedOnOrBefore =
            rushOrderRequestedOnOrBeforeUISwitch.isOn;
        order.rushOrderPleaseSendLargeBoxes =
            rushOrderPleaseSendLargeBoxesUISwitch.isOn;
        order.rushOrderPleaseSendSmallBoxes =
            rushOrderPleaseSendSmallBoxesUISwitch.isOn;
        order.rushOrderPleaseSendAddressLabels =
            rushOrderPleaseSendAddressLabelsUISwitch.isOn;
        order.rushOrderPleaseSendPrepaidLabels =
            rushOrderPleaseSendPrepaidLabelsUISwitch.isOn;
        order.rushOrderStorePositiveModelsFor60Days =
            rushOrderStorePositiveModelsFor60DaysUISwitch.isOn;
    }

    func setRushOrderFormFromOrder() {
        rushOrder2DayTurnaroundUISwitch.isOn =
            order.rushOrder2DayTurnaround;
        rushOrderNextDayTurnaroundUISwitch.isOn =
            order.rushOrderNextDayTurnaround;
        rushOrderPleaseSendRxFormsUISwitch.isOn =
            order.rushOrderPleaseSendRxForms;
        rushOrderRequestedOnOrBeforeUISwitch.isOn =
            order.rushOrderRequestedOnOrBefore;
        rushOrderPleaseSendLargeBoxesUISwitch.isOn =
            order.rushOrderPleaseSendLargeBoxes;
        rushOrderPleaseSendSmallBoxesUISwitch.isOn =
            order.rushOrderPleaseSendSmallBoxes;
        rushOrderPleaseSendAddressLabelsUISwitch.isOn =
            order.rushOrderPleaseSendAddressLabels;
        rushOrderPleaseSendPrepaidLabelsUISwitch.isOn =
            order.rushOrderPleaseSendPrepaidLabels;
        rushOrderStorePositiveModelsFor60DaysUISwitch.isOn =
            order.rushOrderStorePositiveModelsFor60Days;
    }
    
    func readCorrectionsAndModificationsForm() {
        order.correctionsAndModificationsNoFillerLeft =
            correctionsAndModificationsNoFillerLeftUISwitch.isOn;
        order.correctionsAndModificationsNoFillerRight =
            correctionsAndModificationsNoFillerRightUISwitch.isOn;
        order.correctionsAndModificationsMedialArchFillMinimalLeft =
            correctionsAndModificationsMedialArchFillMinimalLeftUISwitch.isOn;
        order.correctionsAndModificationsMedialArchFillMinimalRight =
            correctionsAndModificationsMedialArchFillMinimalRightUISwitch.isOn;
        order.correctionsAndModificationsMedialArchFillStandardLeft =
            correctionsAndModificationsMedialArchFillStandardLeftUISwitch.isOn;
        order.correctionsAndModificationsMedialArchFillStandardRight =
            correctionsAndModificationsMedialArchFillStandardRightUISwitch.isOn;
        order.correctionsAndModificationsMedialArchFillDecreasedLeft =
            correctionsAndModificationsMedialArchFillDecreasedLeftUISwitch.isOn;
        order.correctionsAndModificationsMedialArchFillDecreasedRight =
            correctionsAndModificationsMedialArchFillDecreasedRightUISwitch.isOn;
        order.correctionsAndModificationsMedialArchFillIncreasedRight =
            correctionsAndModificationsMedialArchFillIncreasedRightUISwitch.isOn;
        order.correctionsAndModificationsMedialArchFillIncreasedLeft =
            correctionsAndModificationsMedialArchFillIncreasedLeftUISwitch.isOn;
        order.correctionsAndModificationsCastOrientationVerticalLeft =
            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn;
        order.correctionsAndModificationsCastOrientationVerticalRight =
            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn;
        order.correctionsAndModificationsForefootCorrectionTypeExtrinsicLeft =
            correctionsAndModificationsForefootCorrectionTypeExtrinsicLeftUISwitch.isOn;
        order.correctionsAndModificationsForefootCorrectionTypeExtrinsicRight =
            correctionsAndModificationsForefootCorrectionTypeExtrinsicRightUISwitch.isOn;
        order.correctionsAndModificationsForefootCorrectionTypeIntrinsicLeft =
            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn;
        order.correctionsAndModificationsForefootCorrectionTypeIntrinsicRight =
            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn;
    }

    func readOrthosisSpecificationForm() {
        order.orthosisSpecificationsHeelCupHeight10mmLeft =
            orthosisSpecificationsHeelCupHeight10mmLeftUISwitch.isOn;
        order.orthosisSpecificationsHeelCupHeight14mmLeft =
            orthosisSpecificationsHeelCupHeight14mmLeftUISwitch.isOn;
        order.orthosisSpecificationsHeelCupHeight18mmLeft =
            orthosisSpecificationsHeelCupHeight18mmLeftUISwitch.isOn;
        order.orthosisSpecificationsHeelCupHeight10mmRight =
            orthosisSpecificationsHeelCupHeight10mmRightUISwitch.isOn;
        order.orthosisSpecificationsHeelCupHeight14mmRight =
            orthosisSpecificationsHeelCupHeight14mmRightUISwitch.isOn;
        order.orthosisSpecificationsHeelCupHeight18mmRight =
            orthosisSpecificationsHeelCupHeight18mmRightUISwitch.isOn;
        order.orthosisSpecificationsOtherShellConfigurationsFitToEnclosedShoe =
            orthosisSpecificationsOtherShellConfigurationsFitToEnclosedShoeUISwitch.isOn;
        order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeft =
            orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeftUISwitch.isOn;
        order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeRight =
            orthosisSpecificationsOtherShellConfigurationsLateralFlangeRightUISwitch.isOn;
        order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeft =
            orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeftUISwitch.isOn;
        order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileRight =
            orthosisSpecificationsOtherShellConfigurationsWideArchProfileRightUISwitch.isOn;
        order.orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContact =
            orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactUISwitch.isOn;
        order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHead =
            orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadUISwitch.isOn;
        order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHead =
        orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadUISwitch.isOn;
     
        order.orthosisSpecificationsAnteriorWidthLeft =                 Int16(orthoticSpecificationsAnteriorWidthLeftPicker.selectedRow(inComponent: 0))
        order.orthosisSpecificationsAnteriorWidthRight =                 Int16(orthoticSpecificationsAnteriorWidthRightPicker.selectedRow(inComponent: 0))

        order.orthosisSpecificationsOtherMedmmLeft = Int16(orthosisSpecificationsOtherMedmmLeft.text ?? "0") ?? 0;
        order.orthosisSpecificationsOtherMedmmRight = Int16(orthosisSpecificationsOtherMedmmRight.text ?? "0") ?? 0;
        order.orthosisSpecificationsOtherLatmmLeft = Int16(orthosisSpecificationsOtherLatmmLeft.text ?? "0") ?? 0;
        order.orthosisSpecificationsOtherLatmmRight = Int16(orthosisSpecificationsOtherLatmmRight.text ?? "0") ?? 0;

    }

    func setOrthosisSpecificationFormFromOrder() {
            orthosisSpecificationsHeelCupHeight10mmLeftUISwitch.isOn =
        order.orthosisSpecificationsHeelCupHeight10mmLeft;
            orthosisSpecificationsHeelCupHeight14mmLeftUISwitch.isOn = 
        order.orthosisSpecificationsHeelCupHeight14mmLeft;
            orthosisSpecificationsHeelCupHeight18mmLeftUISwitch.isOn = 
        order.orthosisSpecificationsHeelCupHeight18mmLeft;
            orthosisSpecificationsHeelCupHeight10mmRightUISwitch.isOn = 
        order.orthosisSpecificationsHeelCupHeight10mmRight;
            orthosisSpecificationsHeelCupHeight14mmRightUISwitch.isOn = 
        order.orthosisSpecificationsHeelCupHeight14mmRight;
            orthosisSpecificationsHeelCupHeight18mmRightUISwitch.isOn = 
        order.orthosisSpecificationsHeelCupHeight18mmRight;
            orthosisSpecificationsOtherShellConfigurationsFitToEnclosedShoeUISwitch.isOn = 
        order.orthosisSpecificationsOtherShellConfigurationsFitToEnclosedShoe;
            orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeftUISwitch.isOn = 
        order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeft;
            orthosisSpecificationsOtherShellConfigurationsLateralFlangeRightUISwitch.isOn = 
        order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeRight;
            orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeftUISwitch.isOn = 
        order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeft;
            orthosisSpecificationsOtherShellConfigurationsWideArchProfileRightUISwitch.isOn = 
        order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileRight;
            orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactUISwitch.isOn = 
        order.orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContact;
            orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadUISwitch.isOn = 
        order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHead;

            orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadUISwitch.isOn =
        order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHead;

        
        orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(
            Int(order.orthosisSpecificationsAnteriorWidthLeft), inComponent: 0, animated: false)
        orthoticSpecificationsAnteriorWidthRightPicker.selectRow(
            Int(order.orthosisSpecificationsAnteriorWidthRight), inComponent: 0, animated: false)
        
        
        
        orthosisSpecificationsOtherMedmmLeft.text =
            String(order.orthosisSpecificationsOtherMedmmLeft);
        orthosisSpecificationsOtherMedmmRight.text =
            String(order.orthosisSpecificationsOtherMedmmRight);
        
        orthosisSpecificationsOtherLatmmLeft.text = String(order.orthosisSpecificationsOtherLatmmLeft);
        orthosisSpecificationsOtherLatmmRight.text =  String(order.orthosisSpecificationsOtherLatmmRight);
        

        
    }

    func setCorrectionsAndModificationsFromOrder() {
        correctionsAndModificationsNoFillerLeftUISwitch.isOn =
        order.correctionsAndModificationsNoFillerLeft;
            correctionsAndModificationsNoFillerRightUISwitch.isOn =
        order.correctionsAndModificationsNoFillerRight;
            correctionsAndModificationsMedialArchFillMinimalLeftUISwitch.isOn =
        order.correctionsAndModificationsMedialArchFillMinimalLeft;
            correctionsAndModificationsMedialArchFillMinimalRightUISwitch.isOn =
        order.correctionsAndModificationsMedialArchFillMinimalRight;
            correctionsAndModificationsMedialArchFillStandardLeftUISwitch.isOn =
        order.correctionsAndModificationsMedialArchFillStandardLeft;
            correctionsAndModificationsMedialArchFillStandardRightUISwitch.isOn =
        order.correctionsAndModificationsMedialArchFillStandardRight;
            correctionsAndModificationsMedialArchFillDecreasedLeftUISwitch.isOn =
        order.correctionsAndModificationsMedialArchFillDecreasedLeft;
            correctionsAndModificationsMedialArchFillDecreasedRightUISwitch.isOn =
        order.correctionsAndModificationsMedialArchFillDecreasedRight;
            correctionsAndModificationsMedialArchFillIncreasedRightUISwitch.isOn =
        order.correctionsAndModificationsMedialArchFillIncreasedRight;
            correctionsAndModificationsMedialArchFillIncreasedLeftUISwitch.isOn =
        order.correctionsAndModificationsMedialArchFillIncreasedLeft;
            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn =
        order.correctionsAndModificationsCastOrientationVerticalLeft;
            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn =
        order.correctionsAndModificationsCastOrientationVerticalRight;
            correctionsAndModificationsForefootCorrectionTypeExtrinsicLeftUISwitch.isOn =
        order.correctionsAndModificationsForefootCorrectionTypeExtrinsicLeft;
            correctionsAndModificationsForefootCorrectionTypeExtrinsicRightUISwitch.isOn =
        order.correctionsAndModificationsForefootCorrectionTypeExtrinsicRight;
            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn =
        order.correctionsAndModificationsForefootCorrectionTypeIntrinsicLeft;
            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn =
        order.correctionsAndModificationsForefootCorrectionTypeIntrinsicRight;
    }
    
    func resetDueToOrthosisTypeChange() {
        order.correctionsAndModificationsNoFillerLeft = false;
        order.correctionsAndModificationsNoFillerRight = false;
        order.correctionsAndModificationsMedialArchFillMinimalLeft = false;
        order.correctionsAndModificationsMedialArchFillMinimalRight = false;
        order.correctionsAndModificationsMedialArchFillStandardLeft = false;
        order.correctionsAndModificationsMedialArchFillStandardRight = false;
        order.correctionsAndModificationsMedialArchFillDecreasedLeft = false;
        order.correctionsAndModificationsMedialArchFillDecreasedRight = false;
        order.correctionsAndModificationsMedialArchFillIncreasedRight = false;
        order.correctionsAndModificationsMedialArchFillIncreasedLeft = false;
        order.correctionsAndModificationsCastOrientationVerticalLeft = false;
        order.correctionsAndModificationsCastOrientationVerticalRight = false;
        order.correctionsAndModificationsForefootCorrectionTypeExtrinsicLeft = false;
        order.correctionsAndModificationsForefootCorrectionTypeExtrinsicRight = false;
        order.correctionsAndModificationsForefootCorrectionTypeIntrinsicLeft = false;
        order.correctionsAndModificationsForefootCorrectionTypeIntrinsicRight = false;
        
        order.orthosisSpecificationsHeelCupHeight10mmLeft = false;
        order.orthosisSpecificationsHeelCupHeight14mmLeft = false;
        order.orthosisSpecificationsHeelCupHeight18mmLeft = false;
        order.orthosisSpecificationsHeelCupHeight10mmRight = false;
        order.orthosisSpecificationsHeelCupHeight14mmRight = false;
        order.orthosisSpecificationsHeelCupHeight18mmRight = false;
        order.orthosisSpecificationsOtherShellConfigurationsFitToEnclosedShoe = false;
        order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeft = false;
        order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeRight = false;
        order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeft = false;
        order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileRight = false;
        order.orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContact = false;
        order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHead = false;
        order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHead = false;
    
        order.rushOrder2DayTurnaround = false;
        order.rushOrderNextDayTurnaround = false;
        order.rushOrderPleaseSendRxForms = false;
        order.rushOrderRequestedOnOrBefore = false;
        order.rushOrderPleaseSendLargeBoxes = false;
        order.rushOrderPleaseSendSmallBoxes = false;
        order.rushOrderPleaseSendAddressLabels = false;
        order.rushOrderPleaseSendPrepaidLabels = false;
        order.rushOrderStorePositiveModelsFor60Days = false;
    
        order.postingRearfootPostingElevator4mmLeft = false;
        order.postingRearfootPostingElevator8mmLeft = false;
        order.postingRearfootPostingElevator4mmRight = false;
        order.postingRearfootPostingElevator8mmRight = false;
        order.postingRearfootPostMotion0DegreesMotionLeft = false;
        order.postingRearfootPostMotion0DegreesMotionRight = false;
        order.postingRearfootPostMotion4DegreesMotionLeft = false;
        order.postingRearfootPostMotion4DegreesMotionRight = false;
        order.postingRearfootPostOptionsLongPostFlangeLeft = false;
        order.postingRearfootPostOptionsLongPostFlangeRight = false;
        order.postingRearfootPostOptionsShortPostFlangeLeft = false;
        order.postingRearfootPostOptionsShortPostFlangeRight = false;
        order.postingRearfootPostOptionsLateralPostFlangeLeft = false;
        order.postingRearfootPostOptionsLateralPostFlangeRight = false;
        order.postingRearfootPostOptionsMedialPostFlangeLeft = false;
        order.postingRearfootPostOptionsMedialPostFlangeRight = false;
        order.postingNonCorrectiveForefootPostFullWidthLeft = false;
        order.postingNonCorrectiveForefootPostFullWidthRight = false;
        order.postingNonCorrectiveForefootPostMedialCornerLeft = false;
        order.postingNonCorrectiveForefootPostMedialCornerRight = false;
        order.postingNonCorrectiveForefootPostLateralCornerRight = false;
        order.postingNonCorrectiveForefootPostLateralCornerWidthLeft = false;
     
        setPostingFormFromOrder()
        setRushOrderFormFromOrder()
        setCorrectionsAndModificationsFromOrder()
        setOrthosisSpecificationFormFromOrder()
    }

    
    func calculateCorrectionsAndModificationsDescriptionFromOrder() -> String {
        var theReturn = "";
        if (order.correctionsAndModificationsNoFillerLeft) {
            theReturn += "No Filler Left, "
        }
        if (order.correctionsAndModificationsNoFillerRight) {
            theReturn += "No Filler Right, "
        }
        if (order.correctionsAndModificationsMedialArchFillMinimalLeft) {
            theReturn += "Medial Arch Fill Minimal Left, "
        }
        if (order.correctionsAndModificationsMedialArchFillMinimalRight) {
            theReturn += "Medial Arch Fill Minimal Right, "
        }
        if (order.correctionsAndModificationsMedialArchFillStandardLeft) {
            theReturn += "Medial Arch Fill Standard Left, "
        }
        if (order.correctionsAndModificationsMedialArchFillStandardRight) {
            theReturn += "Medial Arch Fill Standard Right, "
        }
        if (order.correctionsAndModificationsMedialArchFillDecreasedLeft) {
            theReturn += "Medial Arch Fill Decreased Left, "
        }
        if (order.correctionsAndModificationsMedialArchFillDecreasedRight) {
            theReturn += "Medial Arch Fill Decreased Right, "
        }
        if (order.correctionsAndModificationsMedialArchFillIncreasedLeft) {
            theReturn += "Medial Arch Fill Increased Left, "
        }
        if (order.correctionsAndModificationsMedialArchFillIncreasedRight) {
            theReturn += "Medial Arch Fill Increased Right, "
        }
        if (order.correctionsAndModificationsCastOrientationVerticalLeft) {
            theReturn += "Cast Orientation Vertical Left, "
        }
        if (order.correctionsAndModificationsCastOrientationVerticalRight) {
            theReturn += "Cast Orientation Vertical Right, "
        }
        if (order.correctionsAndModificationsForefootCorrectionTypeExtrinsicLeft) {
            theReturn += "Forefoot Correction Type Extrinsic Left, "
        }
        if (order.correctionsAndModificationsForefootCorrectionTypeExtrinsicRight) {
            theReturn += "Forefoot Correction Type Extrinsic Right, "
        }
        if (order.correctionsAndModificationsForefootCorrectionTypeIntrinsicLeft) {
            theReturn += "Forefoot Correction Type Intrinsic Left, "
        }
        if (order.correctionsAndModificationsForefootCorrectionTypeIntrinsicRight) {
            theReturn += "Forefoot Correction Type Intrinsic Right, "
        }

        if (theReturn.hasSuffix(", ")) {
            theReturn = String(theReturn.dropLast(2));
        }
        return theReturn;
    }
    
    func calculatePostingDescriptionFromOrder() -> String{
        var theReturn = "";
        if (order.postingRearfootPostingElevator4mmLeft) {
            theReturn += "Rearfoot Posting Elevator 4mm Left, "
        }
        if (order.postingRearfootPostingElevator8mmLeft) {
            theReturn += "Rearfoot Posting Elevator 8mm Left, "
        }
        if (order.postingRearfootPostingElevator4mmRight) {
            theReturn += "Rearfoot Posting Elevator 4mm Right, "
        }
        if (order.postingRearfootPostingElevator8mmRight) {
            theReturn += "Rearfoot Posting Elevator 8mm Right, "
        }
        if (order.postingRearfootPostMotion0DegreesMotionLeft) {
            theReturn += "Rearfoot Posting Motion 0 Degrees Left, "
        }
        if (order.postingRearfootPostMotion0DegreesMotionRight) {
            theReturn += "Rearfoot Posting Motion 0 Degrees Right, "
        }
        if (order.postingRearfootPostMotion4DegreesMotionLeft) {
            theReturn += "Rearfoot Posting Motion 4 Degrees Left, "
        }
        if (order.postingRearfootPostMotion4DegreesMotionRight) {
            theReturn += "Rearfoot Posting Motion 4 Degrees Right, "
        }
        if (order.postingRearfootPostOptionsLongPostFlangeLeft) {
            theReturn += "Rearfoot Post Options Long Post Flange Left, "
        }
        if (order.postingRearfootPostOptionsLongPostFlangeRight) {
            theReturn += "Rearfoot Post Options Long Post Flange Right, "
        }
        if (order.postingRearfootPostOptionsShortPostFlangeLeft) {
            theReturn += "Rearfoot Post Options Short Post Flange Left, "
        }
        if (order.postingRearfootPostOptionsShortPostFlangeRight) {
            theReturn += "Rearfoot Post Options Short Post Flange Right, "
        }
        if (order.postingRearfootPostOptionsLateralPostFlangeLeft) {
            theReturn += "Rearfoot Post Options Lateral Post Flange Left, "
        }
        if (order.postingRearfootPostOptionsLateralPostFlangeRight) {
            theReturn += "Rearfoot Post Options Lateral Post Flange Right, "
        }
        if (order.postingRearfootPostOptionsMedialPostFlangeLeft) {
            theReturn += "Rearfoot Post Options Medial Post Flange Left, "
        }
        if (order.postingRearfootPostOptionsMedialPostFlangeRight) {
            theReturn += "Rearfoot Post Options Medial Post Flange Right, "
        }
        if (order.postingNonCorrectiveForefootPostFullWidthLeft) {
            theReturn += "Non Corrective Forefoot Post Full Width Left, "
        }
        if (order.postingNonCorrectiveForefootPostFullWidthRight) {
            theReturn += "Non Corrective Forefoot Post Full Width Right, "
        }
        if (order.postingNonCorrectiveForefootPostMedialCornerLeft) {
            theReturn += "Non Corrective Forefoot Post Medial Corner Left, "
        }
        if (order.postingNonCorrectiveForefootPostMedialCornerRight) {
            theReturn += "Non Corrective Forefoot Post Medial Corner Right, "
        }
        if (order.postingNonCorrectiveForefootPostLateralCornerWidthLeft) {
            theReturn += "Non Corrective Forefoot Post Lateral Corner Left, "
        }
        if (order.postingNonCorrectiveForefootPostLateralCornerRight) {
            theReturn += "Non Corrective Forefoot Post Lateral Corner Right, "
        }

        if (theReturn.hasSuffix(", ")) {
            theReturn = String(theReturn.dropLast(2));
        }
        return theReturn;

    }

    func calculateOrthosisSpecificationDescriptionFromOrder() -> String{
        var theReturn = "";
        if (order.orthosisSpecificationsHeelCupHeight10mmLeft || order.orthosisSpecificationsHeelCupHeight10mmRight) {
            theReturn += "Heel cup 10 mm"
            if (order.orthosisSpecificationsHeelCupHeight10mmLeft && order.orthosisSpecificationsHeelCupHeight10mmRight) {
                theReturn += ", "
            } else if (order.orthosisSpecificationsHeelCupHeight10mmLeft) {
                theReturn += " L only, "
            } else {
                theReturn += " R only, "
            }
        }
        if (order.orthosisSpecificationsHeelCupHeight14mmLeft || order.orthosisSpecificationsHeelCupHeight14mmRight) {
            theReturn += "Heel cup 14 mm"
            if (order.orthosisSpecificationsHeelCupHeight14mmLeft && order.orthosisSpecificationsHeelCupHeight14mmRight) {
                theReturn += ", "
            } else if (order.orthosisSpecificationsHeelCupHeight14mmLeft) {
                theReturn += " L only, "
            } else {
                theReturn += " R only, "
            }
        }
        if (order.orthosisSpecificationsHeelCupHeight18mmLeft || order.orthosisSpecificationsHeelCupHeight18mmRight) {
            theReturn += "Heel cup 18 mm"
            if (order.orthosisSpecificationsHeelCupHeight18mmLeft && order.orthosisSpecificationsHeelCupHeight18mmRight) {
                theReturn += ", "
            } else if (order.orthosisSpecificationsHeelCupHeight18mmLeft) {
                theReturn += " L only, "
            } else {
                theReturn += " R only, "
            }
        }
        if (order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeft || order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeRight) {
            theReturn += "Lateral flange"
            if (order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeft && order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeRight) {
                theReturn += ", "
            } else if (order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeft) {
                theReturn += " L only, "
            } else {
                theReturn += " R only, "
            }
        }
        if (order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeft || order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileRight) {
            theReturn += "Wide arch profile"
            if (order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeft && order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileRight) {
                theReturn += ", "
            } else if (order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeft) {
                theReturn += " L only, "
            } else {
                theReturn += " R only, "
            }
        }

        if (order.orthosisSpecificationsOtherShellConfigurationsFitToEnclosedShoe) {
            theReturn += "Fit to enclosed shoe, "
        }
        if (order.orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContact) {
            theReturn += "Thin material at heel contact, "
        }
        if (order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHead) {
            theReturn += "Cut out proximinal to fifth met head, "
        }
        if (order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHead) {
            theReturn += "Cut out proximinal to first met head, "
        }
        
        theReturn += anteriorWidthPickerData[orthoticSpecificationsAnteriorWidthLeftPicker.selectedRow(inComponent: 0)];

        if (orthoticSpecificationsAnteriorWidthLeftPicker.selectedRow(inComponent: 0) == orthoticSpecificationsAnteriorWidthRightPicker.selectedRow(inComponent: 0)) {
            theReturn += ", ";
        } else {
            theReturn += " L, ";
            theReturn += anteriorWidthPickerData[
                orthoticSpecificationsAnteriorWidthRightPicker.selectedRow(inComponent: 0)];
            theReturn += " R, ";
        }
        
        if (orthosisSpecificationsOtherMedmmLeft.text != "" &&
            orthosisSpecificationsOtherLatmmLeft.text != "0") {
            theReturn += "Med(mm) ";
            theReturn += orthosisSpecificationsOtherMedmmLeft.text!;
            if (orthosisSpecificationsOtherMedmmRight.text == orthosisSpecificationsOtherMedmmLeft.text) {
                theReturn += ", ";
            } else {
                theReturn += " L, ";
                theReturn += orthosisSpecificationsOtherMedmmRight.text!;
                theReturn += " R, ";
            }
        }
        
        if (orthosisSpecificationsOtherLatmmLeft.text != "" &&
            orthosisSpecificationsOtherLatmmLeft.text != "0") {
            theReturn += "Lat(mm) ";
            theReturn += orthosisSpecificationsOtherLatmmLeft.text!;
            if (orthosisSpecificationsOtherLatmmRight.text == orthosisSpecificationsOtherLatmmLeft.text) {
                theReturn += ", ";
            } else {
                theReturn += " L, ";
                theReturn += orthosisSpecificationsOtherLatmmRight.text!;
                theReturn += " R, ";
            }
        }
        
        if (theReturn.hasSuffix(", ")) {
            theReturn = String(theReturn.dropLast(2));
        }
        return theReturn;
    }

    func calculateRushOrderDescriptionFromOrder() -> String{
        var theReturn = "";
        if (order.rushOrder2DayTurnaround) {
            theReturn += "2 Day Turnaround, "
        }
        if (order.rushOrderNextDayTurnaround) {
            theReturn += "Next Day Turnaround, "
        }
        if (order.rushOrderPleaseSendRxForms) {
            theReturn += "Please Send Rx Forms, "
        }
        if (order.rushOrderRequestedOnOrBefore) {
            theReturn += "Requested on or before" + "" + ", "
        }
        if (order.rushOrderPleaseSendLargeBoxes) {
            theReturn += "Please Send Large Boxes, "
        }
        if (order.rushOrderPleaseSendSmallBoxes) {
            theReturn += "Please Send Small Boxes, "
        }
        if (order.rushOrderPleaseSendAddressLabels) {
            theReturn += "Please Send Address Labels, "
        }
        if (order.rushOrderPleaseSendPrepaidLabels) {
            theReturn += "Please Send Prepaid Labels, "
        }
        if (order.rushOrderStorePositiveModelsFor60Days) {
            theReturn += "Sore Positive Models for 60 Days, "
        }

        if (theReturn.hasSuffix(", ")) {
            theReturn = String(theReturn.dropLast(2));
        }
        return theReturn;
    }
    
    
    @IBAction func CameraAction(sender: UIButton) {
        let picker = UIImagePickerController()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate

        picker.delegate = appDelegate as? UIImagePickerControllerDelegate & UINavigationControllerDelegate
        picker.sourceType = .camera
        picker.allowsEditing = true
        self.present(picker, animated: true, completion: nil)
    }
    
    @IBAction func ScanLeftFoot(sender: UIButton) {
        
    }

    @IBAction func ScanRightFoot(sender: UIButton) {
        
    }

    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        picker.dismiss(animated: true, completion: nil)
        
        //Save image
        let img = UIImage()
        let data = img.pngData()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let newFootPhoto = FootPhoto.init(entity: NSEntityDescription.entity(forEntityName: "FootPhoto", in:context)!, insertInto: context);
        newFootPhoto.photoCreateDateTime = Date();
        newFootPhoto.photoData = data;
        
        do {
            try context.save();
            photos.append(newFootPhoto);
            appDelegate.saveContext();
        } catch let error as NSError {
            //TODO Cannot save, fail startup
            print("Could not save. \(error), \(error.userInfo)")
        }

        viewDidLoad()
        
        
    }
    
    func drawPDFUsingPrintPageRenderer(printPageRenderer : CustomPrintPageRenderer) -> NSData! {
        let data = NSMutableData()
        UIGraphicsBeginPDFContextToData(data, CGRect.zero, nil)
        UIGraphicsBeginPDFPage()
        printPageRenderer.drawPage(at: 0, in: UIGraphicsGetPDFContextBounds())
        UIGraphicsEndPDFContext()
        return data
    }
    
    func exportHTMLContentToPDF(HTMLContent: String) {
        let printPageRenderer = CustomPrintPageRenderer();
        let printFormatter = UIMarkupTextPrintFormatter(markupText: HTMLContent)
        printPageRenderer.addPrintFormatter(printFormatter, startingAtPageAt: 0)
        let pdfData = drawPDFUsingPrintPageRenderer(printPageRenderer: printPageRenderer)

        let pdfFilename = NSURL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent("nameOfPDFfile.pdf")
        
        pdfData?.write(to: (pdfFilename ?? nil)!, atomically: true)
    }
//
//    class func sendEmail() {
//
//        var gtlMessage = GTLGmailMessage()
//        gtlMessage.raw = self.generateRawString()
//
//        let appd = UIApplication.sharedApplication().delegate as! AppDelegate
//        let query = GTLQueryGmail.queryForUsersMessagesSendWithUploadParameters(nil)
//        query.message = gtlMessage
//
//        appd.service.executeQuery(query, completionHandler: { (ticket, response, error) -> Void in
//            println("ticket \(ticket)")
//            println("response \(response)")
//            println("error \(error)")
//        })
//    }
//
//    class func generateRawString() -> String {
//
//        var dateFormatter:DateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "EEE, dd MMM yyyy HH:mm:ss Z"; //RFC2822-Format
//        var todayString:String = dateFormatter.string(from: Date())
//
//        var rawMessage = "" +
//            "Date: \(todayString)\r\n" +
//            "From: <mail>\r\n" +
//            "To: username <mail>\r\n" +
//            "Subject: Test send email\r\n\r\n" +
//        "Test body"
//
//        println("message \(rawMessage)")
//
//        return GTLEncodeWebSafeBase64(rawMessage.dataUsingEncoding(NSUTF8StringEncoding))
//    }
//
//    func sendEmail() {
//        var smtpSession = MCOSMTPSession()
//        smtpSession.hostname = "smtp.gmail.com"
//        smtpSession.username = "mattdwhittle@gmail.com"
//        smtpSession.password = "xxxxxxxxxxxxxxxx"
//        smtpSession.port = 465
//        smtpSession.authType = MCOAuthType.SASLPlain
//        smtpSession.connectionType = MCOConnectionType.TLS
//        smtpSession.connectionLogger = {(connectionID, type, data) in
//            if data != nil {
//                if let string = NSString(data: data, encoding: NSUTF8StringEncoding){
//                    NSLog("Connectionlogger: \(string)")
//                }
//            }
//        }
//
//        var builder = MCOMessageBuilder()
//        builder.header.to = [MCOAddress(displayName: "Rool", mailbox: "itsrool@gmail.com")]
//        builder.header.from = MCOAddress(displayName: "Matt R", mailbox: "mattdwhittle@gmail.com")
//        builder.header.subject = "My message"
//        builder.htmlBody = "Yo Rool, this is a test message!"
//
//        let rfc822Data = builder.data()
//        let sendOperation = smtpSession.sendOperationWithData(rfc822Data)
//        sendOperation.start { (error) -> Void in
//            if (error != nil) {
//                NSLog("Error sending email: \(error)")
//            } else {
//                NSLog("Successfully sent email!")
//            }
//        }
//    }
}
    


