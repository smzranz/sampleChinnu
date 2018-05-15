//
//  DocumentTreeTableViewCell.swift
//  sampChinnu
//
//  Created by Shamshir on 15/05/18.
//  Copyright © 2018 shamshir. All rights reserved.
//

import UIKit

class DocumentTreeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    
    @IBOutlet weak var arrowImageView: UIImageView!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }

}
