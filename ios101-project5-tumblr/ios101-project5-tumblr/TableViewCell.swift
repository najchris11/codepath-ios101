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
        
        // Setup label
        postText.numberOfLines = 0
        postText.lineBreakMode = .byWordWrapping
        postText.setContentHuggingPriority(.defaultLow, for: .horizontal)

        // Setup image
        postPicture.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        postPicture.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            postPicture.widthAnchor.constraint(equalToConstant: 100),
            postPicture.heightAnchor.constraint(equalToConstant: 100)
        ])
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
