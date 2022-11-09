//
//  CustomTextField.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 09/11/22.
//

import UIKit

class CustomTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        updateView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        updateView()
    }
    
    func updateView() {
        let leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
        self.leftView = leftView
        leftViewMode = .always
        self.font = UIFont(name: C.Fonts.Poppins.Regular, size: 14)
    
        layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        layer.borderWidth = 0.0
        layer.masksToBounds = false
        //layer.shadowRadius = 2.0
        //layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        //layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        //layer.shadowOpacity = 1.0
        //layer.shadowRadius = 0.25
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: self.frame.size.height - 1, width: self.bounds.width-30, height: 1)
        bottomLine.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.125).cgColor
        borderStyle = .none
        layer.addSublayer(bottomLine)
        
    }
    

}
/*
extension UITextField {
    func addBottomBorder(){
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: self.frame.size.height - 1, width: self.bounds.width-30, height: 1)
        bottomLine.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.125).cgColor
        borderStyle = .none
        layer.addSublayer(bottomLine)
        
    }
}

*/

class CustomTextFieldTwo: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        updateView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        updateView()
    }
    
    func updateView() {
        layer.borderWidth = 1
        layer.borderColor = #colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        layer.cornerRadius = 5
    }
}
