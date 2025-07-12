//
//  TableViewCell.swift
//  ios101-project5-tumblr
//
//  Created by Christian Coulibaly on 7/12/25.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var postPicture: UIImageView!
    @IBOutlet weak var postText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
