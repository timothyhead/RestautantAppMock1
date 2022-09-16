//
//  MenuSectionViewController.swift
//  RestaurantAppMockUp
//
//  Created by Timothy Head on 14/09/2022.
//

import UIKit

class MenuSectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let appetiserVC = storyBoard.instantiateViewController(withIdentifier: "AppetiserTableViewController")
        let saladAndSoupsVC = storyBoard.instantiateViewController(withIdentifier: "SaladAndSoupsTableViewController")
        let mainVC = storyBoard.instantiateViewController(withIdentifier: "MainCourseTableViewController")
        let sidesVC = storyBoard.instantiateViewController(withIdentifier: "SidesTableViewController")
        let specaltiesVC = storyBoard.instantiateViewController(withIdentifier: "SpecaltiesTableViewController")
        let ordersVC = storyBoard.instantiateViewController(withIdentifier: "CurrentOrdersTableViewController")
        if identifier == "appetiser" {
            self.navigationController?.pushViewController(appetiserVC, animated: true)
        } else if identifier == "saladAndSoups" {
            self.navigationController?.pushViewController(saladAndSoupsVC, animated: true)
            
        } else if identifier == "main" {
            self.navigationController?.pushViewController(mainVC, animated: true)
        } else if identifier == "sides" {
            self.navigationController?.pushViewController(sidesVC, animated: true)
        } else if identifier == "specalties" {
            self.navigationController?.pushViewController(specaltiesVC, animated: true)
        } else if identifier == "orders" {
            self.navigationController?.pushViewController(ordersVC, animated: true)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
