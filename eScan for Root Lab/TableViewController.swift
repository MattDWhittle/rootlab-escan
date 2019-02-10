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
    
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {
        indexPathOfExpandedView = indexPath;
//        let viewToExpand = tableView.cellForRow(at: indexPath);
//
//        if (expandedView != nil) {
//            let newContractedViewBounds = CGRect(x: expandedView!.bounds.origin.x, y: expandedView!.bounds.origin.y, width: expandedView!.bounds.size.width,
//                                       height: expandedView!.bounds.size.height / 4);
//            expandedView?.bounds = newContractedViewBounds;
//        }
//        let newViewBounds = CGRect(x: viewToExpand!.bounds.origin.x, y: viewToExpand!.bounds.origin.y, width: viewToExpand!.bounds.size.width,
//                                   height: viewToExpand!.bounds.size.height * 4);
//        viewToExpand!.bounds = newViewBounds;
//        expandedView = viewToExpand;
        self.tableView.reloadData();
        (self.parent as! ViewController?)!.orthoticDeviceSelected = indexPath.row;
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
