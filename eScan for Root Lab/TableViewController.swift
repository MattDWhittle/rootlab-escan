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
    
    override func viewDidLoad() {
        orthoticsDeviceViewController = self;
    }
    
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {
        indexPathOfExpandedView = indexPath;

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

    func resetTableView() {
        indexPathOfExpandedView = nil;
        self.tableView.reloadData();
    }
    
    func refreshMyDevices() {
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
        super.init(style: style);
        expandedView = nil;
        indexPathOfExpandedView = nil;
        

    }
    
    required init?(coder aDecoder: NSCoder) {
        heightForRowNormally = UIScreen.main.bounds.height / 12;
        super.init(coder: aDecoder);
        expandedView = nil;
        indexPathOfExpandedView = nil;
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath == indexPathOfExpandedView) {
            return heightForRowNormally * 4;
        }
        if (indexPath.section == 4 && indexPath.row >= myDevices.count) {
            return 0;
        }
        return heightForRowNormally;
    }
    
    @IBAction func orthoticDeviceClickSelect() {
        (self.parent as! ViewController?)!.orthoticDeviceClickSelect()
    }
    
    @IBAction func orthoticDeviceClickEdit() {
        (self.parent as! ViewController?)!.orthoticDeviceClickEdit()
    }

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
