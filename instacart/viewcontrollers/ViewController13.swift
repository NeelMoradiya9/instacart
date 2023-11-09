//
//  ViewController13.swift
//  instacart
//
//  Created by Neel  on 16/09/23.
//

import UIKit

class ViewController13: UIViewController {
    
    var icon = [UIImage(named: "shopping"),UIImage(named: "recipe"),UIImage(named: "list"),UIImage(named: "settings"),UIImage(named: "add"),UIImage(named: "dollar"),UIImage(named: "gift"),UIImage(named: "support")]
    var name = ["Your orders","Your recpies","Your lists","Account settings","Try Instacart+","invite a friend and Earn money","Buy a gift card","Help center"]
    @IBOutlet weak var tbview: UITableView!
    @IBOutlet weak var logout: UIButton!
    
    @IBOutlet weak var instabtn: UIButton!
    @IBOutlet weak var des: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        des.layer.cornerRadius = 5
        instabtn.layer.cornerRadius = 5
        logout.layer.cornerRadius = 15
    }
    @IBAction func log(_ sender: Any) {
        let a = UIAlertController(title: "Log out", message: "successfully", preferredStyle: .alert)
        a.addAction(UIAlertAction(title: "Okay", style: .destructive, handler: nil))
        present(a, animated: true)
    }
    }
//    func alert(message : String){
//        let a = UIAlertController(title: "Log out", message: message, preferredStyle: .alert)
//        a.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
//    }


extension ViewController13: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return icon.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tbview.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as!
        TableViewCell2
        cell.imgview.image = icon[indexPath.row]
        cell.label.text = name[indexPath.row]


        return cell

    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController16") as! ViewController16
        navigationController?.pushViewController(x, animated: true)
    }
    
}
