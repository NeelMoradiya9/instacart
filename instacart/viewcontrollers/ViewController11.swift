//
//  ViewController11.swift
//  instacart
//
//  Created by Neel  on 13/09/23.
//

import UIKit

class ViewController11: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var cview: UICollectionView!
    var imagearr =  [UIImage(named: "sale"),UIImage(named: "eggs"),UIImage(named: "meat"),UIImage(named: "produce"),UIImage(named: "beverages"),UIImage(named: "snacks")]
    var label = ["sale","eggs","meat","produce","beverages","snacks"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cview.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell2
        cell.layer.borderWidth = 2
        cell.layer.cornerRadius = 5
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOffset = CGSizeMake(0, 0)
        cell.layer.shadowOpacity = 0.23
        cell.layer.shadowRadius = 4
        cell.layer.borderColor = UIColor.white.cgColor
        cell.image.image = imagearr[indexPath.row]
        cell.image.layer.cornerRadius = 5
        cell.labels.text = label[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 175, height: 175)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController12")
        as! ViewController12
        navigationController?.pushViewController(x, animated: true)
    }
    
    
    @IBAction func act(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController8")
        as! ViewController8
        navigationController?.popViewController(animated: true)
    }
}
