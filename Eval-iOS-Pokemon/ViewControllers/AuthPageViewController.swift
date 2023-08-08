//
//  AuthPageViewController.swift
//  Eval-iOS-Pokemon
//
//  Created by Student07 on 08/08/2023.
//

import UIKit

class AuthPageViewController: UIViewController {
    
    @IBOutlet weak var headerImg: UIImageView!
    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var inputMail: UITextField!
    @IBOutlet weak var inputPass: UITextField!
    @IBOutlet weak var connectbtn: UIButton!
    
    var auth: Auth?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    func setup(){
        view.backgroundColor = .customDarkGray()
        
        headerImg.image = UIImage(named:{
            switch(auth) {
            case .Facebook: return "faceook_header"
            case .Google: return "google_header"
            case nil: return "google_header"
            }
        }())
        
        closeBtn.tintColor = .systemGray2
        connectbtn.tintColor = .customYellow()
        
        inputMail.placeholder = "Email"
        inputMail.keyboardType = .emailAddress
        inputMail.autocorrectionType = .no
        
        inputPass.placeholder = "Password"
        inputPass.keyboardType = .default
        inputPass.isSecureTextEntry = true
        hideKeyboardOnTap()
        
    }
    
    @IBAction func closeView(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    func hideKeyboardOnTap(){
        let tapOnView = UITapGestureRecognizer(
            target: view,
            action: #selector(UIView.endEditing)
        )
        view.addGestureRecognizer(tapOnView)
    }
    
    @IBAction func connect(_ sender: UIButton) {
        let validate = validate()
        
        if(validate.success){
            let storyboard = UIStoryboard(name: "TabBar", bundle: nil)
            let vc = storyboard.instantiateInitialViewController() as! TabBarController
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
        } else{
            let alert = UIAlertController(title: "Error", message: validate.message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default,handler: { action in
                //print("TOUCH OK")
            }))
            present(alert, animated: true, completion: nil)
        }
    }
    
    func validate() -> (success: Bool, message: String) {
        var result = (success: false, message: "")
        
        guard let mail = inputMail.text, !mail.isEmpty else{
            result.message = "Mail field is empty."
            return result
        }
        
        guard let password = inputPass.text, !password.isEmpty else{
            result.message = "Password field is empty."
            return result
        }
        
        guard mail.contains("@") else{
            result.message = "Mail doesn't contains a \"@\"."
            return result
        }
        
        result.success = true
        return result
    }
    
    
}
