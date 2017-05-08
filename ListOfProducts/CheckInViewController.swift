//
//  CheckInViewController.swift
//  ListOfProducts
//
//  Created by User on 02.05.17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class CheckInViewController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var repeatPassword: UITextField!
    @IBOutlet weak var checkInButton: UIButton!
    
    @IBAction func checkIn(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkInButton.layer.borderWidth = 1.0
        checkInButton.layer.cornerRadius = 5.0
        checkInButton.layer.borderColor = UIColor.orange.cgColor
    }
    
    
}
