//
//  WeaponsCell.swift
//  GOW
//
//  Created by Rafael Gonzalez on 07/03/25.
//

import UIKit

class WeaponsCell: UITableViewCell {

    @IBOutlet weak var wDescription: UILabel!
    @IBOutlet weak var wPoster: UIImageView!
    @IBOutlet weak var wName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        wName.setCustomFont(fontName: Constants.fontMenuTitle, size: Constants.fontSizeDefault, textStyle: .title2)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
