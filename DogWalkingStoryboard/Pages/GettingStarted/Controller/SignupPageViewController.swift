//
//  SignupPageViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 09/11/22.
//

import UIKit

class SignupPageViewController: UIViewController {
    
    
    @IBOutlet weak var termsAndConditionLabel: UILabel!
    @IBOutlet weak var alreadyHaveAnAccountLabel: UILabel!
    
    //MARK: - updating initial view
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        var text = "Yes, i agree to the Terms of Service and acknowledge the Privacy Statement"
        var attributedText = NSMutableAttributedString(string: text)
        attributedText.addAttribute(.foregroundColor, value: UIColor(named: C.Colors.AccentColor) ?? .red, range: NSRange(location: 19, length: 17))
        termsAndConditionLabel.attributedText = attributedText
        text = "Already have an account? login"
        attributedText = NSMutableAttributedString(string: text)
        attributedText.addAttribute(.foregroundColor, value: UIColor(named: C.Colors.AccentColor) ?? .red, range: NSRange(location: 25, length: 5))
        alreadyHaveAnAccountLabel.attributedText = attributedText
        let gestureOne = UITapGestureRecognizer(target: self, action: #selector(termsAndConditionLabelPressed(sender:)))
        termsAndConditionLabel.addGestureRecognizer(gestureOne)
        let gestureTwo = UITapGestureRecognizer(target: self, action: #selector(alreadyHaveAnAccountLabelPressed(sender:)))
        alreadyHaveAnAccountLabel.addGestureRecognizer(gestureTwo)
    }
    
    //MARK: - viewDidLoad method
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - button press methods
    @objc
    func termsAndConditionLabelPressed(sender: UILabel) {
        print("terms and condition label pressed")
    }
    @objc
    func alreadyHaveAnAccountLabelPressed(sender: UILabel) {
        print("already have and account label pressed")
       // let vc = LoginPageViewController()
       // vc.modalPresentationStyle = .fullScreen
       // present(vc, animated: true)
    }
}
