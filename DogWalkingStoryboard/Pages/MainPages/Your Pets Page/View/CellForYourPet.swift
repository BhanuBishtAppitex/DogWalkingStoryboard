//
//  CellForViewPet.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 02/11/22.
//

import UIKit

class CellForYourPet: UITableViewCell {
    
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var nameText: UILabel!
    @IBOutlet weak var categoryText: UILabel!
    @IBOutlet weak var moreDetailsText: UILabel!
    @IBOutlet weak var mainView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        mainView.layer.borderWidth = 1
        mainView.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.125).cgColor
        mainView.layer.cornerRadius = mainView.frame.height/2
        
        mainImage.layer.borderWidth = 1
        mainImage.layer.borderColor = UIColor.clear.cgColor
        NSLayoutConstraint.activate([
            mainView.heightAnchor.constraint(equalToConstant: 85)
        ])
       
    }

}
