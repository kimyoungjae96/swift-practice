//
//  ViewController.swift
//  HelloWorld
//
//  Created by crerar on 2021/01/07.
//  Copyright © 2021 youngjae. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var IbIHello: UILabel!
    @IBOutlet var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSend(_ sender: UIButton) {
        IbIHello.text = "Hello, " + txtName.text!
    }
    
}

