//
//  ViewController8.swift
//  instacart
//
//  Created by Neel  on 02/09/23.
//

import UIKit

class ViewController8: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var imagearr =  [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "8")]
    var label = ["Costo","CVS Pharmacy","Rainbow Grocery","SafeWay","SEPHORA","SEPHORATS","Target","walgreens"]
    
    @IBOutlet weak var tbview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagearr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tbview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!
        TableViewCell
        cell.imagev.image = imagearr[indexPath.row]
        cell.label1.text = label[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController9") as! ViewController9
        navigationController?.pushViewController(x, animated: true)
    }
    
    @IBAction func act(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController7")
        as! ViewController7
        navigationController?.popViewController(animated: true)
    }
}
