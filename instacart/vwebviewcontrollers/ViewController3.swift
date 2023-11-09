//
//  ViewController3.swift
//  instacart
//
//  Created by Neel  on 28/08/23.
//

import UIKit

class ViewController3: UIViewController {
    @IBOutlet weak var webv: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webv.loadRequest(URLRequest(url: URL(string: "https://www.instacart.com/terms")!))
    }
    
    @IBAction func act(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController14")
        as! ViewController14
        navigationController?.popViewController(animated: true)
    }
}
