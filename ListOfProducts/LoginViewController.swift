//
//  LoginViewController.swift
//  ListOfProducts
//
//  Created by User on 29.04.17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var comeInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var passwordRecoveryButton: UIButton!
    
    @IBAction func comeIn(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "ComeIn") as? ListOfProductsViewController {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    @IBAction func passwordRecovery(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "PasswordRecovery") as? PasRecoveryController {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    @IBAction func singUp(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "SignUp") as? CheckInViewController {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    let attrSignUpButton : [String: Any] = [
        NSFontAttributeName : UIFont.systemFont(ofSize: 14),
        NSForegroundColorAttributeName : UIColor.orange,
        NSUnderlineStyleAttributeName : NSUnderlineStyle.styleSingle.rawValue]
    
    let attrPasswordRecoveryButton : [String: Any] = [
        NSFontAttributeName : UIFont.systemFont(ofSize: 14),
        NSForegroundColorAttributeName : UIColor.orange,
        NSUnderlineStyleAttributeName : NSUnderlineStyle.styleSingle.rawValue]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        comeInButton.layer.borderWidth = 1.0
        comeInButton.layer.cornerRadius = 5.0
        comeInButton.layer.borderColor = UIColor.orange.cgColor
        
        let attributeSignUpButton = NSMutableAttributedString(string: "Зарегистрироваться",
                                                        attributes: attrSignUpButton)
        signUpButton.setAttributedTitle(attributeSignUpButton, for: .normal)
        
        let attributePasswordRecoveryButton = NSMutableAttributedString(string: "Восстановление пароля",
                                                        attributes: attrPasswordRecoveryButton)
        passwordRecoveryButton.setAttributedTitle(attributePasswordRecoveryButton, for: .normal)
    }
    
}


