//
//  MenuCell.swift
//  kf
//
//  Created by 지구9 on 9/1/23.
//

import Foundation
import UIKit

class MenuCell:UITableViewCell{
    
    @IBOutlet weak var foodImage: UIImageView!
    
    @IBOutlet weak var nameTitleView: UILabel!
    
    @IBOutlet weak var priceTitleView: UILabel!
    
    
    override func layoutSubviews() {
    foodImage.layer.cornerRadius = 30
        nameTitleView.font = UIFont.systemFont(ofSize: 30, weight: .heavy)
priceTitleView.font = UIFont.systemFont(ofSize: 25, weight: .heavy)
   priceTitleView.textColor = UIColor.white
nameTitleView.textColor = UIColor.white
    
}

}
