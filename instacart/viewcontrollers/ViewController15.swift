//
//  ViewController15.swift
//  instacart
//
//  Created by Neel  on 28/09/23.
//

import UIKit

class ViewController15: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func map(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController18")
        as! ViewController18
        navigationController?.pushViewController(x, animated: true)
    }
    
    @IBAction func ctn(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController8")
        as! ViewController8
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func act(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController17")
        as! ViewController17
        navigationController?.popViewController(animated: true)
    }
}

