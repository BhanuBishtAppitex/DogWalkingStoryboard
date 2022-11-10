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
    @IBOutlet weak var signUpButton: UIButton!
    var isKeepMeUpdatedEnable: Bool = false
    var isTermsandCondtionEnable: Bool = false
    
  
    //MARK: - viewDidLoad method
    override func viewDidLoad() {
        super.viewDidLoad()
        initialViewUpdation()
    }
    
    func initialViewUpdation() {
        // button's font
        signUpButton.titleLabel?.font = UIFont(name: C.Fonts.Poppins.SemiBold, size: 16)
        // attributed text
        var text = "Yes, i agree to the Terms of Service and acknowledge the Privacy Statement"
        var attributedText = NSMutableAttributedString(string: text)
        attributedText.addAttribute(.foregroundColor, value: UIColor(named: C.Colors.AccentColor) ?? .red, range: NSRange(location: 19, length: 17))
        termsAndConditionLabel.attributedText = attributedText
        text = "Already have an account? login"
        attributedText = NSMutableAttributedString(string: text)
        attributedText.addAttribute(.foregroundColor, value: UIColor(named: C.Colors.AccentColor) ?? .red, range: NSRange(location: 25, length: 5))
        alreadyHaveAnAccountLabel.attributedText = attributedText
        // gesture for lable and views
        let gestureOne = UITapGestureRecognizer(target: self, action: #selector(termsAndConditionLabelPressed(sender:)))
        termsAndConditionLabel.addGestureRecognizer(gestureOne)
        let gestureTwo = UITapGestureRecognizer(target: self, action: #selector(alreadyHaveAnAccountLabelPressed(sender:)))
        alreadyHaveAnAccountLabel.addGestureRecognizer(gestureTwo)
    }
    
    //MARK: - button press methods
    @objc
    func termsAndConditionLabelPressed(sender: UILabel) {
        print("terms and condition label pressed")
    }
    
    @IBAction func termsAndConditionRadioButton(_ sender: UIButton) {
        if !isTermsandCondtionEnable{
            sender.setImage(UIImage(systemName: "circle.fill"), for: .normal)
            isTermsandCondtionEnable = true
        } else {
            sender.setImage(UIImage(named: "RadioButton"), for: .normal)
            isTermsandCondtionEnable = false
        }
    }
    @IBAction func keepMeUpdatedRadioButton(_ sender: UIButton) {
        if !isKeepMeUpdatedEnable {
            sender.setImage(UIImage(systemName: "circle.fill"), for: .normal)
            isKeepMeUpdatedEnable = true
        } else {
            sender.setImage(UIImage(named: "RadioButton"), for: .normal)
            isKeepMeUpdatedEnable = false
        }
    }
   
    @objc
    func alreadyHaveAnAccountLabelPressed(sender: UILabel) {
        print("already have and account label pressed")
        let viewController:
        UIViewController = UIStoryboard(
            name: "GettingStarted", bundle: nil
        ).instantiateViewController(withIdentifier: "LoginViewController") as UIViewController
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: false, completion: nil)
    }
}
