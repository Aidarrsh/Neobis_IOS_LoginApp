//
//  ViewController.swift
//  Neobis_IOS_LoginApp
//
//  Created by Айдар Шарипов on 3/4/23.
//
// Creating a github repo
import UIKit

@IBDesignable

class RoundedCornerView: UIView {

    // if cornerRadius variable is set/changed, change the corner radius of the UIView
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
}

class ViewController: UIViewController, UITextFieldDelegate {
    @IBAction func ButtonAction(_ sender: UIButton) {
        print(LoginTextField.text ?? "Username")
        print(PasswordTextField.text ?? "Password")
    }
    
    @IBOutlet weak var SignInButton: UIButton!
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    @IBOutlet weak var LoginTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.LoginTextField.delegate = self
        self.PasswordTextField.delegate = self
        // Do any additional setup after loading the view.
        
        LoginTextField.layer.cornerRadius = 25.0
        PasswordTextField.layer.cornerRadius = 25.0
        SignInButton.layer.cornerRadius = 25.0
        SignInButton.layer.masksToBounds = true
        
        
//        LoginTextField.placeholder = "Username"
        let placeholderText = NSAttributedString(string: "Username", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        LoginTextField.attributedPlaceholder = placeholderText
        let placeholderTextPassword = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        PasswordTextField.attributedPlaceholder = placeholderTextPassword
        
        
        LoginTextField.textAlignment = .center
        PasswordTextField.textAlignment = .center
        LoginTextField.textColor = .white
        PasswordTextField.isSecureTextEntry = true
        PasswordTextField.textColor = .white
        
        }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ LoginTextField: UITextField) -> Bool {
        LoginTextField.resignFirstResponder()
        return true
    }
}
