//
//  CollectionViewCell1.swift
//  instacart
//
//  Created by Neel  on 12/09/23.
//

import UIKit

class CollectionViewCell1: UICollectionViewCell {
    @IBOutlet weak var imagev: UIImageView!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var names: UILabel!
    @IBOutlet weak var stepp: UIStepper!
    @IBOutlet weak var labstep: UILabel!
    @IBAction func step(_ sender: UIStepper) {
        labstep.text = String(sender.value)
    }
}
