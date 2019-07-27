//
//  EstacionamentoTableViewCell.swift
//  AppIOT
//
//  Created by student on 26/07/19.
//  Copyright © 2019 Felipe Corte. All rights reserved.
//

import UIKit

class EstacionamentoTableViewCell: UITableViewCell {

    @IBOutlet weak var modeloLabel: UILabel!
    
    @IBOutlet weak var corLabel: UILabel!
    @IBOutlet weak var anoLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
