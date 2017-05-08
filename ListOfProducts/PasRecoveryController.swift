//
//  PasRecoveryController.swift
//  ListOfProducts
//
//  Created by User on 02.05.17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class PasRecoveryController: UIViewController {
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    
    @IBAction func send(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sendButton.layer.borderWidth = 1.0
        sendButton.layer.cornerRadius = 5.0
        sendButton.layer.borderColor = UIColor.orange.cgColor
    }

}
