//
//  ViewController12.swift
//  instacart
//
//  Created by Neel  on 14/09/23.
//

import UIKit

class ViewController12: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    var imagearr =  [UIImage(named: "3 seat sof"),UIImage(named: "bed"),UIImage(named: "comb"),UIImage(named: "dining table"),UIImage(named: "fan"),UIImage(named: "fridge"),UIImage(named: "hairdryer"),UIImage(named: "oven"),UIImage(named: "stove"),UIImage(named: "washing machine"),UIImage(named: " keyboard"),UIImage(named: " mouse")]
    var name = ["Sofa of 3 seat","bed for 2 people","comb","dining table","fan"," samsung fridge","nova hairdryer"," samsung oven","gas stove"," LGwashing machine","Apple Magic keyboard","Apple Magic mouse"]
    var pricelabel = ["$257","$520","$2","$358","$99","$222","$49","$149","$79","$659","$99","$99"]
    var sale =  ["$189 Off ","$210 Off","$6 Off","$49 off","$29 off","$89 off","$29 off","$39 off","$19 off","$19 off","$19 off","$18 off"]
   
    
    @IBOutlet weak var ctnbtn: UIButton!
    
    @IBOutlet weak var cview: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ctnbtn.layer.cornerRadius = 5
    }
    
    @IBAction func ctnact(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController16") as!
        ViewController16
        
        navigationController?.pushViewController(x, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagearr.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cview.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        as! CollectionViewCell3
        cell.name.text = name[indexPath.row]
        cell.imgv.image = imagearr[indexPath.row]
        cell.price.text = pricelabel[indexPath.row]
        cell.sale.text = sale[indexPath.row]
        cell.sale.textColor = UIColor.red
                return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 190, height: 240)
    }
    
    @IBAction func act(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController11") as! ViewController11
        navigationController?.popViewController(animated: true)
    }
}
