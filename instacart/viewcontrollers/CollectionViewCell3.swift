//
//  CollectionViewCell4.swift
//  instacart
//
//  Created by Neel  on 21/09/23.
//

import UIKit

class CollectionViewCell3: UICollectionViewCell {
    @IBOutlet weak var imgv: UIImageView!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var sale: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var labstep: UILabel!
    @IBAction func act(_ sender: UIStepper) {
         labstep.text = String(sender.value)
    }
}

