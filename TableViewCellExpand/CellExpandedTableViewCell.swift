//
//  CellExpandedTableViewCell.swift
//  TableViewCellExpand
//
//  Created by Marcelo on 10/3/17.
//  Copyright © 2017 MAS. All rights reserved.
//

import UIKit

class CellExpandedTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var expandedTitle: UILabel!
    @IBOutlet weak var expandedSubtitle: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
