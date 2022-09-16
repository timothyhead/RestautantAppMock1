//
//  CurrentOrdersTableViewCell.swift
//  RestaurantAppMockUp
//
//  Created by Timothy Head on 16/09/2022.
//

import UIKit

class CurrentOrdersTableViewCell: UITableViewCell {
    
    var appetisersLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 260, height: 40))
   // var soupsAndSaladsLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 260, height: 40))
    var mainCourseLabal = UILabel(frame: CGRect(x: 0, y: 0, width: 260, height: 40))
    var sidesLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 260, height: 40))
   // var specaltiesLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 260, height: 40))
    var priceLabel = UILabel()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.backgroundColor = UIColor(red: 242 / 255, green: 143 / 255, blue: 59 / 255, alpha: 1)
        appetisersLabel.font = UIFont(name: "Helvetica", size: 30)
        appetisersLabel.adjustsFontSizeToFitWidth = true
        priceLabel.frame = CGRect(x: self.frame.width - 10 , y: 0, width: 100, height: 40)
        priceLabel.font = UIFont(name: "Helvetica", size: 25)
        
        self.addSubview(appetisersLabel)
        self.addSubview(priceLabel)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
