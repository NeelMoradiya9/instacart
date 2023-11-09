//
//  ViewController14.swift
//  instacart
//
//  Created by Neel  on 25/09/23.
//

import UIKit

class ViewController14: UIViewController {
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var pass: UITextField!
    @IBOutlet weak var logi: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func act(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController")
        as! ViewController
        navigationController?.popViewController(animated: true)
    }
    @IBAction func loginact(_ sender: Any) {
        if username.text == "" && pass.text == ""{
            alert1(message: "Please Enter Your Username or Password...")
        }
        else if username.text == "" {
            alert1(message: "Please Enter Your Username Or Mobile number...")
        }
        else if pass.text == ""{
            alert1(message: "Please Enter Your Password...")
        }
        else{
            naviga()
        }
    }
    func alert1( message:String)
    {
        let a = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        a.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        a.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
       present(a, animated: true)
    }
    func naviga()
        {
            let naviga=storyboard?.instantiateViewController(identifier: "ViewController8")
            as! ViewController8
            navigationController?.pushViewController(naviga, animated: true)
        }
}
