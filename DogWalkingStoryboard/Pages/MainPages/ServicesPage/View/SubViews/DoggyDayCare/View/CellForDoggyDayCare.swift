//
//  CellForDoggyDayCare.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 07/11/22.
//

import UIKit

class CellForDoggyDayCare: UITableViewCell {
    
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var experienceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var starLabel: UIImageView!
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var discriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    static let identifierString: String = "CellForDoggyDayCare"
    
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.layer.cornerRadius = 5
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = UIColor(named: C.Colors.AccentBlur)?.cgColor
        profileImage.layer.cornerRadius = profileImage.frame.height/2
        profileImage.layer.borderWidth = 1
        profileImage.layer.borderColor = UIColor.clear.cgColor
        NSLayoutConstraint.activate([
            contentView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width-48),
            contentView.heightAnchor.constraint(equalToConstant: 112),
        ])
    }
    
}
