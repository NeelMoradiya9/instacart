//
//  ViewController16.swift
//  instacart
//
//  Created by Neel  on 29/09/23.
//

import UIKit

class ViewController16: UIViewController {
    
    @IBOutlet weak var t1: UITextField!
    @IBOutlet weak var t2: UITextField!
    @IBOutlet weak var t3: UITextField!
    @IBOutlet weak var t4: UITextField!
    @IBOutlet weak var t5: UITextField!
    @IBOutlet weak var savebtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        savebtn.layer.cornerRadius = 5
    }
    
    @IBAction func savebtn(_ sender: Any) {
        if t1.text == "" && t2.text == "" && t3.text == "" && t4.text == "" && t5.text == "" {
            alert(message: "Enter Your Details")
        }else if t1.text == "" {
            alert(message: "Enter Your Details")

        }else if   t2.text == ""  {
            alert(message: "Enter Your Details")

        }else if t3.text == "" {
                    alert(message: "Enter Your Details")

        } else if t4.text == ""{
                alert(message: "Enter Your Details")
        }else if t5.text == ""{
            alert(message: "Enter Your Details")
    }
        else{
            let x = storyboard?.instantiateViewController(identifier: "ViewController17")
            as! ViewController17
            navigationController?.pushViewController(x, animated: true)
        }
        
    }
    func alert(message : String){
        let a = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        
        a.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        a.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
       present(a, animated: true)    }
    
    
    @IBAction func act(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController12")
        as! ViewController12
        navigationController?.popViewController(animated: true)
    }
}
