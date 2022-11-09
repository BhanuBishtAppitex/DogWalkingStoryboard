//
//  CellForServicePage.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 04/11/22.
//

import UIKit

class CellForServicePage: UICollectionViewCell {

    static let identifierText: String = "CellForServicePage"
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var secondTitle: UILabel!
    @IBOutlet weak var mainView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }


    
    override func layoutSubviews() {
        super.layoutSubviews()
        mainView.layer.cornerRadius = 12
        //mainView.layer.borderWidth = 1
        //mainView.layer.borderColor = #colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        mainView.layer.shadowColor = #colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        mainView.layer.shadowOffset = CGSize(width: 2, height: 2)
        mainView.layer.shadowOpacity = 1
        mainView.layer.shadowRadius = 4
        
    }
}
