//
//  CustomUIButtom.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 02/11/22.
//

import UIKit

@IBDesignable
class CustomUIButtom: UIButton {

    //MARK: - @IBInspectable
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var textFont: UIFont = UIFont() {
        didSet {
            self.titleLabel?.font = textFont
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var highlightedBackgroundColor :UIColor?
       @IBInspectable var nonHighlightedBackgroundColor :UIColor?
    override var isHighlighted :Bool {
           get {
               return super.isHighlighted
           }
           set {
               if newValue {
                   self.backgroundColor = highlightedBackgroundColor
               }
               else {
                   self.backgroundColor = nonHighlightedBackgroundColor
               }
               super.isHighlighted = newValue
           }
       }
    
    @IBInspectable var selectedBackgroundColor :UIColor?
       @IBInspectable var nonSelectedBackgroundColor :UIColor?
    override var isSelected: Bool  {
           get {
               return super.isSelected
           }
           set {
               if newValue {
                   self.backgroundColor = selectedBackgroundColor
               }
               else {
                   self.backgroundColor = nonSelectedBackgroundColor
               }
               super.isHighlighted = newValue
           }
       }


}



extension UIButton {
  func setBackgroundColor(_ color: UIColor, forState controlState: UIControl.State) {
    let colorImage = UIGraphicsImageRenderer(size: CGSize(width: 1, height: 1)).image { _ in
      color.setFill()
      UIBezierPath(rect: CGRect(x: 0, y: 0, width: 1, height: 1)).fill()
    }
    setBackgroundImage(colorImage, for: controlState)
  }
}


