//
//  MenuTableViewCell.swift
//  RestaurantAppMockUp
//
//  Created by Timothy Head on 15/09/2022.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
    
    var label = UILabel(frame: CGRect(x: 0, y: 0, width: 260, height: 40))
    var priceLabel = UILabel()
    var detailLabel = UILabel()
    
    init() {
        super.init(style: .value1, reuseIdentifier: "menuCell")
    }
    
required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)
        }
    
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
       

        
        self.backgroundColor = UIColor(red: 242 / 255, green: 143 / 255, blue: 59 / 255, alpha: 1)
        label.font = UIFont(name: "Helvetica", size: 30)
        label.adjustsFontSizeToFitWidth = true
        priceLabel.frame = CGRect(x: self.frame.width - 10 , y: 0, width: 100, height: 40)
        priceLabel.font = UIFont(name: "Helvetica", size: 25)
        detailLabel.frame = CGRect(x: 0, y: label.frame.height - 3 , width: self.frame.width, height: 50)
        detailLabel.font = UIFont(name: "Helvetica-Light", size: 20)
        detailLabel.numberOfLines = 0
    
      
        // Initialization code
        self.addSubview(label)
        self.addSubview(priceLabel)
        self.addSubview(detailLabel)
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
