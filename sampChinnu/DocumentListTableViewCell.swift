//
//  DocumentListTableViewCell.swift
//  sampChinnu
//
//  Created by Shamshir on 15/05/18.
//  Copyright © 2018 shamshir. All rights reserved.
//

import UIKit

class DocumentListTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var expandBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
