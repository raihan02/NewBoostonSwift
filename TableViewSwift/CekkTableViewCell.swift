//
//  CekkTableViewCell.swift
//  TableViewSwift
//
//  Created by uxd on 6/2/20.
//  Copyright © 2020 uxd. All rights reserved.
//

import UIKit

class CekkTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
