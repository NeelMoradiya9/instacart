//
//  ViewController18.swift
//  instacart
//
//  Created by Neel  on 02/10/23.
//

import UIKit

class ViewController18: UIViewController {

    @IBOutlet weak var webv: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webv.loadRequest(URLRequest(url: URL(string: "https://www.google.com/maps")!))
    }
   
    @IBAction func act(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController15")
        as! ViewController15
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func act2(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController")
        as! ViewController
        navigationController?.popToViewController(x, animated: true)
    }
}


