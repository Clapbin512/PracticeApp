//
//  TableViewCell.swift
//  practiceApp
//
//  Created by clapbin on 2023/09/15.
//

import UIKit

class NavigationTableViewCell: UITableViewCell {

    @IBOutlet weak var cellLable: UILabel!
    @IBOutlet weak var cellIndicatorButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        cellLable.textColor = .white
        cellIndicatorButton.tintColor = .white
        
        backgroundColor = .clear
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        print(#function)
    }

}
