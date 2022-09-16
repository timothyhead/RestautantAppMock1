//
//  CurrentOrdersTableViewController.swift
//  RestaurantAppMockUp
//
//  Created by Timothy Head on 14/09/2022.
//

import UIKit

class CurrentOrdersTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    let appetisers = ["Garlic Bread", "Olives"]
    let main = ["Ribeye Steak"]
    let sides = ["French Fries", "Grilled Veggies"]
    var items = [[String]]()
    var headerTitles = ["Appetisers", "Main", "Sides"]
    var appetisersPrice = ["£4.00", "£4.00"]
    var mainPrice = ["£25.00"]
    var sidesPrice = ["£4.00", "£5.00"]
    var prices = [[String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = UIColor(red: 242 / 255, green: 143 / 255, blue: 59 / 255, alpha: 1)
        self.view.backgroundColor = UIColor(red: 255 / 213, green: 213 / 255, blue: 194 / 255, alpha: 1)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        items = [appetisers, main, sides]
        prices = [appetisersPrice, mainPrice, sidesPrice]
        let rightBarButtomItem = Badge().badge()
        
        navigationItem.rightBarButtonItem = rightBarButtomItem
        
    }

    // MARK: - Table view data source

   func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
       return items.count
    }

 func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
     return items[section].count
    }

   
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "currentOrders", for: indexPath) as! CurrentOrdersTableViewCell

        // Configure the cell...
        cell.appetisersLabel.text = items[indexPath.section][indexPath.row]
        cell.mainCourseLabal.text = items[indexPath.section][indexPath.row]
        cell.sidesLabel.text = items[indexPath.section][indexPath.row]
       cell.priceLabel.text = prices[indexPath.section][indexPath.row]

        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       headerTitles[section]
    }
  
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let paymentVC = storyBoard.instantiateViewController(withIdentifier: "PaymentViewController")
        if identifier == "payment" {
            self.navigationController?.pushViewController(paymentVC, animated: true)
        }
    }

}
