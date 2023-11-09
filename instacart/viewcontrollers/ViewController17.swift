//
//  ViewController17.swift
//  instacart
//
//  Created by Neel  on 02/10/23.
//

import UIKit

class ViewController17: UIViewController {

    @IBOutlet weak var t1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func act2(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController15")
        as! ViewController15
        navigationController?.pushViewController(x, animated: true)
    }
    
    @IBAction func save(_ sender: Any) {
        if t1.text == ""{
            alert(message: "Enter Your promo code")
        }else
        {
                let x = storyboard?.instantiateViewController(identifier: "ViewController15")
                as! ViewController15
                navigationController?.pushViewController(x, animated: true)
        }
        func alert(message : String){
            let a = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
            
            a.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            a.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
           present(a, animated: true)
        }
        
    }
    
    @IBAction func act(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController16")
        as! ViewController16
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func termscondition(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController3")
        as! ViewController3
        navigationController?.pushViewController(x, animated: true)
    }
}
