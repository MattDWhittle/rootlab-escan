//
//  TableViewController.swift
//  eScan for Root Lab
//
//  Created by RahMat on 2/9/19.
//  Copyright © 2019 rootlab. All rights reserved.
//

import Foundation


class OrthoticsDeviceViewController: UITableViewController {

    var expandedView : UIView?;
    
    var indexPathOfExpandedView : IndexPath?;
    
    var heightForRowNormally: CGFloat;
    
    var heightForSectionNormally: CGFloat;
    
    override func viewDidLoad() {
        orthoticsDeviceViewController = self;
    }
    
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {
        if (indexPathOfExpandedView == indexPath) {
            self.tableView.scrollToRow(at: indexPathOfExpandedView!, at: .top, animated: true)
            indexPathOfExpandedView = nil;
            self.tableView.reloadData();

        } else {
            indexPathOfExpandedView = indexPath;
            self.tableView.scrollToRow(at: indexPathOfExpandedView!, at: .top, animated: true)
            
            self.tableView.reloadData();
            
            var theRow = indexPath.row;
            if (indexPath.section > 0) {
                theRow += 5;
            }
            if (indexPath.section > 1) {
                theRow += 5;
            }
            if (indexPath.section > 2) {
                theRow += 5;
            }
            if (indexPath.section > 3) {
                theRow += 9;
            }
            
            (self.parent as! ViewController?)!.orthoticDeviceSelected = theRow;
        }
       
    }

    func resetTableView() {
        indexPathOfExpandedView = nil;
        self.tableView.reloadData();
    }
    
    func refreshMyDevices() {
        indexPathOfExpandedView = nil;

        if (richieBraceHasBeenSelected) {
            richieBraceDescriptionLabel0.text = "Full flexion ankle hinge pivot, black shell, 35mm heel cup, met. length EVA top cover, heel stabilizer bar, intrinsic forefoot correction.";
            richieBraceDescriptionLabel1.text = "Limits ankle motion, black shell, 35mm heel cup, met. length EVA top cover, heel stabilizer bar, intrinsic forefoot correction.";
            richieBraceDescriptionLabel2.text = "Full flexion ankle hinge pivot with spring (Tamarack) hinges for dorsiflexion assistance , black shell, 35mm heel cup, sulcus length EVA top cover, heel stabilizer bar, intrinsic forefoot correction.";
            richieBraceLabel0.text = "Standard";
            richieBraceLabel1.text = "Restricted Ankle Pivot";
            richieBraceLabel2.text = "Dynamic Assist";
        } else {
            var i = 0;
            var mySortedDevices = Array(myDevices);
            mySortedDevices.sort(by: { $0.deviceName! < $1.deviceName! })
            for myDevice in mySortedDevices {
                if (i == 0) {
                    myDeviceLabel0.text = myDevice.deviceName;
                    myDeviceDescription0.text = "";
                } else if (i == 1) {
                    myDeviceLabel1.text = myDevice.deviceName;
                    myDeviceDescription1.text = "";
                } else if (i == 2) {
                    myDeviceLabel2.text = myDevice.deviceName;
                    myDeviceDescription2.text = "";
                } else if (i == 3) {
                    myDeviceLabel3.text = myDevice.deviceName;
                    myDeviceDescription3.text = "";
                } else if (i == 4) {
                    myDeviceLabel4.text = myDevice.deviceName;
                    myDeviceDescription4.text = "";
                } else if (i == 5) {
                    myDeviceLabel5.text = myDevice.deviceName;
                    myDeviceDescription5.text = "";
                } else if (i == 6) {
                    myDeviceLabel6.text = myDevice.deviceName;
                    myDeviceDescription6.text = "";
                } else if (i == 7) {
                    myDeviceLabel7.text = myDevice.deviceName;
                    myDeviceDescription7.text = "";
                } else if (i == 8) {
                    myDeviceLabel8.text = myDevice.deviceName;
                    myDeviceDescription8.text = "";
                }
                i = i + 1;
            }
            
            richieBraceDescriptionLabel0.text = "semi-rigid polypropylene shell, standard width, 14mm heel cup, intrinsic forefoot correction, heel bisection vertical, 4/4 firm crepe post, 8mm post elevator, orthosis length vinyl top cover ";
            richieBraceDescriptionLabel1.text = "milled semi-rigid polypropylene shell, standard width, 14mm heel cup, intrinsic forefoot correction, heel bisection vertical, 4/4 integrated polypropylene post, 8mm post elevator, orthosis length vinyl top cover (some Rx options not available)";
            richieBraceDescriptionLabel2.text = "semi-rigid graphite composite shell, standard width, 14mm heel cup, intrinsic forefoot correction, heel bisection vertical, 4/4 firm crepe post, 8mm post elevator, orthosis length vinyl top cover ";
            richieBraceLabel0.text = "Polypropylene";
            richieBraceLabel1.text = "PolyMax™";
            richieBraceLabel2.text = "Graphite";
            
        }
        
        self.tableView.reloadData();

        
        //Not gonna do it this way
//
//        self.tableView.beginUpdates();
//        var i = 0;
//        //        for myDevice in myDevices {
//        self.tableView.insertRows(at: [IndexPath(row: 0, section: 0)], with: .automatic)
//        let cell = self.tableView.cellForRow(at: IndexPath(row: 0, section: 0))
////        let cellToCopy = self.tableView.cellForRow(at: IndexPath(row: 0, section: 0))
////
////        let copiedView = NSKeyedUnarchiver.unarchiveObject(with: NSKeyedArchiver.archivedData(withRootObject: cellToCopy!.contentView))
//
////        let copiedViewAsUiView = copiedView as? UIView;
////        if (copiedViewAsUiView != nil) {
////            cell?.contentView.addSubview(copiedViewAsUiView!);
////        }
//        let addedUIView = UIView();
//        let addedUILabel = UILabel();
//        addedUILabel.text = "SUPER COOL";
//        addedUIView.addSubview(addedUILabel)
//        cell?.contentView.addSubview(addedUIView);
//        i = i + 1;
//        //      }
//        self.tableView.endUpdates();
    }
    
    override init(style: UITableView.Style) {
        heightForRowNormally = UIScreen.main.bounds.height / 12;
        heightForSectionNormally = UIScreen.main.bounds.height / 20;
        super.init(style: style);
        expandedView = nil;
        indexPathOfExpandedView = nil;
        

    }
    
    required init?(coder aDecoder: NSCoder) {
        heightForRowNormally = UIScreen.main.bounds.height / 12;
        heightForSectionNormally = UIScreen.main.bounds.height / 20;
        super.init(coder: aDecoder);
        expandedView = nil;
        indexPathOfExpandedView = nil;
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath == indexPathOfExpandedView) {
            return heightForRowNormally * 4;
        }
        if (richieBraceHasBeenSelected) {
            if (indexPath.section != 0 || indexPath.row >= 3) {
                return 0;
            }
        } else if (indexPath.section == 4 && indexPath.row >= myDevices.count) {
            return 0;
        }
        return heightForRowNormally;
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if (richieBraceHasBeenSelected) {
            if(section > 0) {
                return 0.0
            }
        }

        return heightForSectionNormally;
        
    }
    
    @IBAction func orthoticDeviceClickSelect() {
        (self.parent as! ViewController?)!.orthoticDeviceClickSelect()
    }
    
    @IBAction func orthoticDeviceClickEdit() {
        (self.parent as! ViewController?)!.orthoticDeviceClickEdit()
    }
    
    @IBAction func deleteOrthoticsDevice() {
        do {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            try context.save();
            var mySortedDevices = Array(myDevices);
            mySortedDevices.sort(by: { $0.deviceName! < $1.deviceName! })
            let nameToDelete = mySortedDevices[indexPathOfExpandedView!.row].deviceName;
            var i = 0;
            var deviceIndex = 0;
            for device in myDevices {
                if (device.deviceName == nameToDelete) {
                    deviceIndex = i;
                }
                i = i + 1;
            }
            context.delete(myDevices[deviceIndex]);
            myDevices.remove(at: deviceIndex);
            appDelegate.saveContext();
        } catch let error as NSError {
        //TODO Cannot save, fail startup
        print("Could not save Order. \(error), \(error.userInfo)")
        }
        
        expandedView = nil;
        indexPathOfExpandedView = nil;
        refreshMyDevices();
        self.tableView.reloadData();
    }

    
    @IBOutlet var richieBraceLabel0: UILabel!
    @IBOutlet var richieBraceLabel1: UILabel!
    @IBOutlet var richieBraceLabel2: UILabel!

    @IBOutlet var richieBraceDescriptionLabel0: UITextView!
    @IBOutlet var richieBraceDescriptionLabel1: UITextView!
    @IBOutlet var richieBraceDescriptionLabel2: UITextView!

    
    @IBOutlet var myDeviceLabel0: UILabel!
    @IBOutlet var myDeviceLabel1: UILabel!
    @IBOutlet var myDeviceLabel2: UILabel!
    @IBOutlet var myDeviceLabel3: UILabel!
    @IBOutlet var myDeviceLabel4: UILabel!
    @IBOutlet var myDeviceLabel5: UILabel!
    @IBOutlet var myDeviceLabel6: UILabel!
    @IBOutlet var myDeviceLabel7: UILabel!
    @IBOutlet var myDeviceLabel8: UILabel!

    @IBOutlet var myDeviceDescription0: UITextView!
    @IBOutlet var myDeviceDescription1: UITextView!
    @IBOutlet var myDeviceDescription2: UITextView!
    @IBOutlet var myDeviceDescription3: UITextView!
    @IBOutlet var myDeviceDescription4: UITextView!
    @IBOutlet var myDeviceDescription5: UITextView!
    @IBOutlet var myDeviceDescription6: UITextView!
    @IBOutlet var myDeviceDescription7: UITextView!
    @IBOutlet var myDeviceDescription8: UITextView!

}
