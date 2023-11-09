//
//  ViewController.swift
//  instacart
//
//  Created by Neel  on 28/08/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Loginbutton: UIButton!
    @IBOutlet weak var signupbutton: UIButton!
    @IBOutlet weak var backimg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Loginbutton.layer.cornerRadius = 15
        signupbutton.layer.cornerRadius = 15
    }
    @IBAction func signupact(_ sender: Any) {
        signupnavigation()
    }
    @IBAction func loginbtn(_ sender: Any) {
        signupnavigation2()
    }
    
    @IBAction func becomeshopperbtn(_ sender: Any) {
        becomeshopper()
    }
    func signupnavigation(){
        let x = storyboard?.instantiateViewController(identifier: "ViewController2")
        as! ViewController2
        navigationController?.pushViewController(x, animated: true)
    }
    func signupnavigation2(){
        let x = storyboard?.instantiateViewController(identifier: "ViewController14")
        as! ViewController14
        navigationController?.pushViewController(x, animated: true)
    }
    
    func becomeshopper(){
        let x = storyboard?.instantiateViewController(identifier: "ViewController5")
        as! ViewController5
        navigationController?.pushViewController(x, animated: true)
    }
}

