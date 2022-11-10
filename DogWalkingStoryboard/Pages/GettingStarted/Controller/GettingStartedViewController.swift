//
//  GettingStartedViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 02/11/22.
//

import UIKit

class GettingStartedViewController: UIViewController {
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var createAccountButton: UIButton!
    
    //MARK: - view did load method
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        updateInitialView()
    }
    
    func updateInitialView() {
        // button's font and style
        loginButton.titleLabel?.font = UIFont(name: C.Fonts.Poppins.SemiBold, size: 16)
        createAccountButton.titleLabel?.font = UIFont(name: C.Fonts.Poppins.SemiBold, size: 16)
        createAccountButton.layer.borderColor = UIColor(named: C.Colors.AccentColor)?.cgColor ?? CGColor(red: 1, green: 0, blue: 0, alpha: 1)
        createAccountButton.layer.borderWidth = 2
        createAccountButton.layer.cornerRadius = createAccountButton.frame.height/2
        print("ButtonType = \(loginButton.buttonType)")
    }
    
    
    
    //MARK: - button press methods
    
    @IBAction func createAccountButtonPressed(_ sender: UIButton) {
        print("create account")
    }

    @IBAction func logInButtonPressed(_ sender: UIButton) {
        print("Login Button Pressed")
    }
}
