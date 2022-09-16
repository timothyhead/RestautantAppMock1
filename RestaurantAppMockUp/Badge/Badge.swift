//
//  Badge.swift
//  RestaurantAppMockUp
//
//  Created by Timothy Head on 16/09/2022.
//

import UIKit

struct Badge {
    func badge() -> UIBarButtonItem {
        let badgeCount = UILabel(frame: CGRect(x: 22, y: -05, width: 20, height: 20))
        badgeCount.layer.borderColor = UIColor.clear.cgColor
        badgeCount.layer.borderWidth = 2
        badgeCount.layer.cornerRadius = badgeCount.bounds.size.height / 2
        badgeCount.textAlignment = .center
        badgeCount.layer.masksToBounds = true
        badgeCount.textColor = .white
        badgeCount.font = badgeCount.font.withSize(12)
        badgeCount.backgroundColor = .red
        badgeCount.text = "4"
        
        
        let rightBarButton = UIButton(frame: CGRect(x: 0, y: 0, width: 35, height: 35))
        rightBarButton.setBackgroundImage(UIImage(named: "NotificationBell"), for: .normal)
        
        rightBarButton.addSubview(badgeCount)
        
        
        let rightBarButtomItem = UIBarButtonItem(customView: rightBarButton)
     return rightBarButtomItem
    }
}
