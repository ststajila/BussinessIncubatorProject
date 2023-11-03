//
//  ViewController.swift
//  Orderly
//
//  Created by STANISLAV STAJILA on 10/17/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Home"

    }

    
    @IBAction func goToList(_ sender: Any) {
    performSegue(withIdentifier: "list", sender: self)
    }
    
    @IBAction func goToCart(_ sender: Any) {
    performSegue(withIdentifier: "cart", sender: self)
    }
    
    
    @IBAction func goToSearch(_ sender: Any) {
        performSegue(withIdentifier: "search", sender: self)
    }
    
    @IBAction func goToQr(_ sender: Any) {
        performSegue(withIdentifier: "qr", sender: self)
    }
}

