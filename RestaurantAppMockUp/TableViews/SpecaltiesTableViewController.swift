//
//  SpecaltiesTableViewController.swift
//  RestaurantAppMockUp
//
//  Created by Timothy Head on 14/09/2022.
//

import UIKit

class SpecaltiesTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
var menuItems: [String] = ["BBQ Wings", "Hot Wings", "Chicken Corden Bleu"]
    var menuItemDetails: [String] = ["Smokey sauce", "Nice and spicy", "Perfection on a plate"]
    var priceDetails: [String] = ["£4.00", "£7.00", "£5.00"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = UIColor(red: 242 / 255, green: 143 / 255, blue: 59 / 255, alpha: 1)
        self.view.backgroundColor = UIColor(red: 255 / 213, green: 213 / 255, blue: 194 / 255, alpha: 1)
        self.tableView.delegate = self
        self.tableView.dataSource = self

        let rightBarButtomItem = Badge().badge()
        
        navigationItem.rightBarButtonItem = rightBarButtomItem
    }

    // MARK: - Table view data source

     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return menuItems.count
    }

    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as? MenuTableViewCell else { return UITableViewCell()}
    
        //cell.sizeToFit()
       
        cell.label.text = menuItems[indexPath.row]
        cell.priceLabel.text = priceDetails[indexPath.row]
        cell.detailLabel.text = menuItemDetails[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
      return "SPECALTIES"
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        70
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else { return }
        header.textLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 30)
        header.textLabel?.textAlignment = .center
  
    }

    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let ordersVC = storyBoard.instantiateViewController(withIdentifier: "CurrentOrdersTableViewController")
        if identifier == "orders" {
            self.navigationController?.pushViewController(ordersVC, animated: true)
        }
    }

}
