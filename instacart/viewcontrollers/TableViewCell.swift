//
//  TableViewCell.swift
//  instacart
//
//  Created by Neel  on 02/09/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var imagev: UIImageView!
    @IBOutlet weak var label1: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
