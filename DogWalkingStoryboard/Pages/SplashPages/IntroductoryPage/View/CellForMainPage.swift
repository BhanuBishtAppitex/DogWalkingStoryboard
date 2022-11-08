//
//  CellForMainPage.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 04/11/22.
//

import UIKit

class CellForMainPage: UICollectionViewCell {
    
    static let identifierText: String = "CellForMainPage"
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    @IBOutlet weak var leading: NSLayoutConstraint!
    @IBOutlet weak var trailing: NSLayoutConstraint!
    @IBOutlet weak var bottom: NSLayoutConstraint!
    @IBOutlet weak var top: NSLayoutConstraint!
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var secondTitle: UILabel!
    @IBOutlet weak var stackView: UIStackView!

    override func awakeFromNib() {
        super.awakeFromNib()
    
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
      
        
    }

}
