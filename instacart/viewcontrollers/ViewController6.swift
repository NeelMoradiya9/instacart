//
//  ViewController6.swift
//  instacart
//
//  Created by Neel  on 31/08/23.
//

import UIKit
class ViewController6: UIViewController {
    @IBOutlet weak var otptexxt: UITextField!
   
    @IBOutlet weak var continueout: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continueout.layer.cornerRadius = 10
    }
    
    @IBAction func act(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController2")
        as! ViewController2
        navigationController?.popViewController(animated: true)
    }
    @IBAction func continueact(_ sender: Any) {
        if otptexxt.text ?? "" >= "A" &&  otptexxt.text ?? "" <= "Z"{
            alert(message: "Enter your phone Numbers")
        }else if otptexxt.text ?? "" >= "a" &&  otptexxt.text ?? "" <= "z"{
            alert(message: "Enter your Phone Numbers")
        }else if otptexxt.text == ""{
            alert(message: "Enter your Phone Numbers")
        } else if otptexxt.text?.count ?? 0 < 4 {
            alert(message: "Enter A valid OTP")
        }else{
            continuenav()
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func dismisskeyboard(){
        view.endEditing(true)
    }
    func alert( message:String)
    {
        let a = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        a.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        a.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
       present(a, animated: true)
    }
    func continuenav(){
        let x = storyboard?.instantiateViewController(identifier: "ViewController7")
        as! ViewController7
        navigationController?.pushViewController(x, animated: true)
    }
}
