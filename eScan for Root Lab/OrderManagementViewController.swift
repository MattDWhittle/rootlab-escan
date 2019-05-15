//
//  OrderManagementViewController.swift
//  eScan for Root Lab
//
//  Created by RahMat on 5/11/19.
//  Copyright © 2019 rootlab. All rights reserved.
//

import Foundation

class OrderManagementViewController: UITableViewController {

    var heightForRowNormally: CGFloat;
    
    var heightForSectionNormally: CGFloat;

    override func viewDidLoad() {
        orderManagementViewController = self;
    }

    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {
        
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "orderCell", for: indexPath)

        if (indexPath.row > (self.parent as! ViewController).searchedOrders.count) {
            return cell;
        }
        let theOrder = (self.parent as! ViewController).searchedOrders[indexPath.row];
        for subCellView in cell.subviews {
            for subView in subCellView.subviews {
                let theLabel = subView as? UILabel;
                let theButton = subView as? UIButton;
                
                let dateFormatter : DateFormatter = DateFormatter();
                dateFormatter.dateFormat = "MM/dd/yyyy hh:mm a";
                let vOrderDate = theOrder.createDateTime == nil ? "" : dateFormatter.string(from: theOrder.createDateTime!);
                let multiplier : CGFloat = 1 - ((1 - (screenSize.width / 2048)) / 2);
                
                if (theLabel != nil) {
                    var theString = vOrderDate + " - ";
                    theString += (theOrder.orderPatient?.firstName ?? "") + " ";
                    theString += (theOrder.orderPatient?.lastName ?? "") + " - ";
                    theString += (theOrder.orderPractitioner?.firstName ?? "") + " ";
                    theString += (theOrder.orderPractitioner?.lastName ?? "") + " - ";
                    theString += (theOrder.chiefComplaintDiagnosis ?? "");
                    theLabel?.text = theString;
                    
                    
                    theLabel?.font = UIFont(name: "Gil Sans-Bold", size: 24 * multiplier)
                }
                if (theButton != nil) {
                    theButton!.titleLabel?.font = UIFont(name: "Gil Sans-Bold", size: 24 * multiplier)
                    theButton!.setTitle(String(indexPath.row), for: .disabled) ;
                }
            }
        

        }
        
        return cell
    }
    
    override init(style: UITableView.Style) {
        heightForRowNormally = UIScreen.main.bounds.height / 24;
        heightForSectionNormally = UIScreen.main.bounds.height / 20;
        super.init(style: style);
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        heightForRowNormally = UIScreen.main.bounds.height / 24;
        heightForSectionNormally = UIScreen.main.bounds.height / 20;
        super.init(coder: aDecoder);
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       
        
        return heightForRowNormally;
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
       
        
        return 0.0;
        
    }
    
    func resetTableView() {
        self.tableView.reloadData();
    }
    
    @IBAction func orderManagementSelectOrder(sender: UIButton) {
        let theParent = (self.parent as! ViewController?)!;
        let theIndex = Int(sender.title(for: .disabled)!);
        order = theParent.searchedOrders[theIndex!];
        theParent.changePageTo(pageTo: practitionerManagementPageIndex)
        theParent.fromOrderToScreen();
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (self.parent as! ViewController?)!.searchedOrders.count;
    }
}
