//
//  CellForYourPet.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 09/11/22.
//

import UIKit

class CellForYourPet: UITableViewCell {
    
    static let identifierString: String = "CellForYourPetsPage"
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var nameText: UILabel!
    @IBOutlet weak var categoryText: UILabel!
    @IBOutlet weak var moreDetailsText: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        mainView.layer.cornerRadius = mainView.frame.height/2
        mainView.layer.shadowColor = #colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        mainView.layer.shadowRadius = 4
        mainView.layer.shadowOpacity = 1
        mainView.layer.shadowOffset = CGSize(width: 2, height: 2)
        
        mainImage.layer.borderWidth = 1
        mainImage.layer.borderColor = UIColor.clear.cgColor
        mainImage.layer.cornerRadius = mainImage.frame.height/2
       
       
    }

    
}
