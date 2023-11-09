//  ViewController10.swift
//  instacart
//
//  Created by Neel  on 12/09/23.
//

import UIKit
class ViewController10: UIViewController {
    @IBOutlet weak var cview2: UICollectionView!
    @IBOutlet weak var dilvery: UILabel!
    
    
    @IBAction func act(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController9") as! ViewController9
        navigationController?.popViewController(animated: true)
    }
    var price = ["$1","$5","$3","$7","$9","$2","$4","$6","$1","$3"]
    var imagearr =  [UIImage(named: "apple"),UIImage(named: "avocado"),UIImage(named: "beetroot"),UIImage(named: "broccoli"),UIImage(named: "corn"),UIImage(named: "cucumber"),UIImage(named: "mango"),UIImage(named: "mashroom"),UIImage(named: "pineapple"),UIImage(named: "radish")]
    var namesfruit = ["apple","avocado","beetroot","broccoli","corn","cucumber","mango","mashroom","pineapple","radish"]
    override func viewDidLoad() {
        super.viewDidLoad()
        dilvery.layer.cornerRadius = 3
    }
}
extension ViewController10: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return imagearr.count
        }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cview2.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell1
//        cell.layer.borderWidth = 2
//        cell.layer.borderColor = UIColor.black.cgColor
//        cell.layer.cornerRadius = 3
        cell.price.text = price[indexPath.row]
        cell.imagev.image = imagearr[indexPath.row]
        cell.names.text = namesfruit[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 180)
    }
    
}

