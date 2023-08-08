//
//  LandPageViewController.swift
//  Eval-iOS-Pokemon
//
//  Created by Student07 on 08/08/2023.
//

import UIKit

class LandPageViewController: UIViewController {
    @IBOutlet weak var connectGoogle: UIView!
    @IBOutlet weak var connectFacebook: UIView!
    @IBOutlet weak var icoGoogle: UIImageView!
    @IBOutlet weak var facebookIco: UIImageView!
    @IBOutlet weak var labelGoogle: UILabel!
    @IBOutlet weak var labelFacebook: UILabel!
    @IBOutlet weak var labelConnect: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
        addGestureGoogle()
        addGestureFacebook()
    }
    
    func setup() {
        view.backgroundColor = .customDarkGray()
        icoGoogle.tintColor = .customYellow()
        facebookIco.tintColor = .customYellow()
        labelGoogle.textColor = .customYellow()
        labelFacebook.textColor = .customYellow()
        labelConnect.textColor = .customYellow()
        
    }
    
    func addGestureGoogle(){
        let gesture = UITapGestureRecognizer(target: self, action: #selector(self.goToGoogle(sender:)))
        self.connectGoogle.addGestureRecognizer(gesture)
    }
    
    @objc func goToGoogle(sender: UITapGestureRecognizer) {
        goAuth(auth: .Google)
    }
    
    func addGestureFacebook(){
        let gesture = UITapGestureRecognizer(target: self, action: #selector(self.goToFacebook(sender:)))
        self.connectFacebook.addGestureRecognizer(gesture)
    }
    
    @objc func goToFacebook(sender: UITapGestureRecognizer) {
        goAuth(auth: .Facebook)
    }
    
    func goAuth(auth: Auth) {
        let vc = storyboard?.instantiateViewController(identifier: "AuthPage") as! AuthPageViewController
        vc.modalPresentationStyle = .fullScreen
        vc.auth = auth
        present(vc, animated: true, completion: nil)
    }
}
