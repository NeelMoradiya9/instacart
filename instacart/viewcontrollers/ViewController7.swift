//
//  ViewController7.swift
//  instacart
//
//  Created by Neel  on 31/08/23.
//

import UIKit

class ViewController7: UIViewController {
    @IBOutlet weak var yourpass: UITextField!
    @IBOutlet weak var reenterpass: UITextField!
    @IBOutlet weak var ctnbtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        ctnbtn.layer.cornerRadius = 10
    }
    
    @IBAction func act(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController6")
        as! ViewController6
        navigationController?.popViewController(animated: true)
    }
    @IBAction func ctnbutton(_ sender: Any) {
        if yourpass.text == reenterpass.text {
            let x = storyboard?.instantiateViewController(identifier: "ViewController8")
            as! ViewController8
            navigationController?.pushViewController(x, animated: true)
        }else{
            alert(message: "Password Does Not Match")
        }
        func alert( message:String)
        {
            let a = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
            a.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            a.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
           present(a, animated: true)
        }
    }
}
