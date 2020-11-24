//
//  WhoseTableViewCell.swift
//  Midterms
//
//  Created by Phuoc Nguyen on 11/25/20.
//  Copyright © 2020 Phuoc Nguyen. All rights reserved.
//

import UIKit

class WhoseTableViewCell: UITableViewCell {

    @IBOutlet weak var lbl_GuestsName: UILabel!
    @IBOutlet weak var lbl_NumGuests: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
