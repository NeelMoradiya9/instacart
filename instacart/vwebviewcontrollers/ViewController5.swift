//
//  ViewController5.swift
//  instacart
//
//  Created by Neel  on 29/08/23.
//

import UIKit

class ViewController5: UIViewController {
    @IBOutlet weak var webvw: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webvw.loadRequest(URLRequest(url: URL(string: "https://shoppers.instacart.com/")!))
        
    }
    
    @IBAction func act(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController")
        as! ViewController
        navigationController?.popViewController(animated: true)
    }
}
