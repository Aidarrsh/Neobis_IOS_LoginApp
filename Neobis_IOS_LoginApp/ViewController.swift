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

class ViewController: UIViewController {

    @IBOutlet weak var LoginTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        LoginTextField.layer.cornerRadius = 30.0
    }


}

