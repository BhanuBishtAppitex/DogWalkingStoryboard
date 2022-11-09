//
//  GettingStartedViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 02/11/22.
//

import UIKit

class GettingStartedViewController: UIViewController {
    @IBOutlet weak var createAccountButton: CustomUIButtom!
    @IBOutlet weak var loginButton: CustomUIButtom!
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        createAccountButton.titleLabel?.font = UIFont(name: C.Fonts.Poppins.SemiBold, size: 16)
        loginButton.titleLabel?.font = UIFont(name: C.Fonts.Poppins.SemiBold, size: 16)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    
    
    @IBAction func createAccountButtonPressed(_ sender: UIButton) {
        print("create account")
    }

    @IBAction func logInButtonPressed(_ sender: UIButton) {
        print("Login Button Pressed")
    }
}
