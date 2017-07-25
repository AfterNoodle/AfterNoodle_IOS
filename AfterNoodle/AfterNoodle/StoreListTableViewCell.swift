//
//  StoreListTableViewCell.swift
//  AfterNoodle
//
//  Created by songmho on 2017. 7. 18..
//  Copyright © 2017년 AfterNoodle. All rights reserved.
//

import UIKit

class StoreListTableViewCell: UITableViewCell {

    @IBOutlet weak var txtShopName: UILabel!
    @IBOutlet weak var btnFab: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
