//
//  StartScreenViewController.swift
//  RestaurantAppMockUp
//
//  Created by Timothy Head on 14/09/2022.
//

import UIKit

class StartScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let menuSectionVC = storyBoard.instantiateViewController(withIdentifier: "MenuSectionViewController")
        let ordersVC = storyBoard.instantiateViewController(withIdentifier: "CurrentOrdersTableViewController")
        if identifier == "menuOptions" {
            self.navigationController?.pushViewController(menuSectionVC, animated: true)
        } else {
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
