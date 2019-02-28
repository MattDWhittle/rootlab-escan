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
        (self.parent as! ViewController?)!.orthoticDeviceSelected = indexPath.row;
    }

    func resetTableView() {
        indexPathOfExpandedView = nil;
        self.tableView.reloadData();
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
        return heightForRowNormally;
    }
    
    @IBAction func orthoticDeviceClickSelect() {
        (self.parent as! ViewController?)!.orthoticDeviceClickSelect()
    }
    
    @IBAction func orthoticDeviceClickEdit() {
        (self.parent as! ViewController?)!.orthoticDeviceClickEdit()
    }


}
