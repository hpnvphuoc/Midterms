//
//  GuestsCell.swift
//  Midterms
//
//  Created by Phuoc Nguyen on 11/24/20.
//  Copyright © 2020 Phuoc Nguyen. All rights reserved.
//

import UIKit

class GuestsCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var lbl_GuestsName: UILabel!
    
    @IBOutlet weak var lbl_Numguests: UILabel!
    @IBOutlet weak var lbl_Tables: UILabel!
    
    @IBOutlet weak var lbl_Sections: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
