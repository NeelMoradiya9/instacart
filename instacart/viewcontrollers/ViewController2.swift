//
//  VinewController2.swift
//  instacart
//
//  Created by Neel  on 28/08/23.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var googlebtn: UIButton!
    @IBOutlet weak var applebtn: UIButton!
    @IBOutlet weak var faceboookbtn: UIButton!
    @IBOutlet weak var continuebtn: UIButton!
    @IBOutlet weak var phonetexxt: UITextField!
    @IBOutlet weak var backbtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        continuebtn.layer.cornerRadius = 10
        faceboookbtn.layer.cornerRadius = 10
        googlebtn.layer.cornerRadius = 10
        applebtn.layer.cornerRadius = 10
    }
    
    @IBAction func back(_ sender: Any) {
        let x = storyboard?.instantiateViewController(withIdentifier: "ViewController")
        as! ViewController
        navigationController?.popViewController(animated: true)
    }
    @IBAction func contiueact(_ sender: Any) {
        if phonetexxt.text ?? "" >= "A" &&  phonetexxt.text ?? "" <= "Z"{
            alert(message: "Enter your phone Numbers")
        }else if phonetexxt.text ?? "" >= "a" &&  phonetexxt.text ?? "" <= "z"{
            alert(message: "Enter your Phone Numbers")
        }else if phonetexxt.text == ""{
            alert(message: "Enter your Phone Numbers")
        } else if phonetexxt.text?.count ?? 0 < 10 {
            alert(message: "Enter A valid Phone Number")
        }else{
            continuenav()
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func alert( message:String)
    {
        let a = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        
        a.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        a.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
       present(a, animated: true)
    }
    @IBAction func termserbtn(_ sender: Any) {
        navigation()
    }
    @IBAction func privacybtn(_ sender: Any) {
        navigation2()
    }
    func navigation(){
        let x = storyboard?.instantiateViewController(identifier: "ViewController3")
        as! ViewController3
        navigationController?.pushViewController(x, animated: true)
    }
    func navigation2(){
        let x = storyboard?.instantiateViewController(identifier: "ViewController4")
        as! ViewController4
        navigationController?.pushViewController(x, animated: true)
    }
    func continuenav(){
        let x = storyboard?.instantiateViewController(identifier: "ViewController6")
        as! ViewController6
        navigationController?.pushViewController(x, animated: true)
    }
}
