//
//  TableViewCell.swift
//  0MVC-Swift5-iOS-TableView
//
//  Created by user189204 on 1/1/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var labelUsername: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
