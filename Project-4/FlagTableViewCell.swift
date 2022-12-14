//
//  FlagTableViewCell.swift
//  Project-4
//
//  Created by Евгения Зорич on 14.12.2022.
//

import UIKit

class FlagTableViewCell: UITableViewCell {
    
    @IBOutlet var flagImageView: UIImageView!

    
    var name: String = ""

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        flagImageView.layer.borderColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5).cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
