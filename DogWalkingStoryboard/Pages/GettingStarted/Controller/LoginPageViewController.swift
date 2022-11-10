//
//  LoginPageViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 09/11/22.
//

import UIKit

class LoginPageViewController: UIViewController {

    @IBOutlet weak var dontHaveAccountLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var remmberMeToggle: UIButton!
    var isToggleEnable: Bool = false
   
    override func viewDidLoad() {
        super.viewDidLoad()
        initialViewUpdation()
    }
    
    func initialViewUpdation(){
        // button's font
        loginButton.titleLabel?.font = UIFont(name: C.Fonts.Poppins.SemiBold, size: 16)
        // attributed string
        let string = "Don't have an account, Sign up"
        let attributedText = NSMutableAttributedString(string: string)
        attributedText.addAttribute(.foregroundColor, value: UIColor(named: C.Colors.AccentColor)!, range: NSRange(location: 23, length: 7))
        attributedText.addAttribute(.font, value: UIFont(name: C.Fonts.Poppins.Medium, size: 14) ?? UIFont.systemFont(ofSize: 16), range: NSRange(location: 0, length: 28))
        dontHaveAccountLabel.attributedText = attributedText
        // gesture for label and views
        let gesture = UITapGestureRecognizer(target: self, action: #selector(dontHaveAccountLabelClicked(sender:)))
        dontHaveAccountLabel.addGestureRecognizer(gesture)
        
    }
    
    //MARK: - click methods
    @objc
    func dontHaveAccountLabelClicked(sender: UILabel){
        print("dont have account label clicked")
    }
    
    @IBAction func remmberMeTogglePressed(_ sender: UIButton) {
        if !isToggleEnable {
            sender.setImage(UIImage(systemName: "circle.fill"), for: .normal)
            isToggleEnable = true
        } else {
            sender.setImage(UIImage(named: "RadioButton"), for: .normal)
            isToggleEnable = false
        }
    }
    
  
}
