//
//  ViewController4.swift
//  instacart
//
//  Created by Neel  on 28/08/23.
//

import UIKit

class ViewController4: UIViewController {
    @IBOutlet weak var webv: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webv.loadRequest(URLRequest(url: URL(string: "https://www.instacart.com/privacy")!))
    }
    @IBAction func act(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "ViewController")
        as! ViewController
        navigationController?.popViewController(animated: true)
    }
}
