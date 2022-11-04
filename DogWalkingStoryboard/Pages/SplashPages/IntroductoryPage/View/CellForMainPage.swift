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
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var secondTitle: UILabel!
    @IBOutlet weak var stackView: UIStackView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        NSLayoutConstraint.activate([
            contentView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            contentView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height-87)
        ])
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
       
    }

}
