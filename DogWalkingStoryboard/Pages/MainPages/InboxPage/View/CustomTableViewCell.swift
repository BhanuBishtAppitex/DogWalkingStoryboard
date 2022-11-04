//
//  CustomTableViewCell.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 03/11/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let indetifierText: String = "CellForInboxPage"
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }

    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var boardingLabel: UILabel!
    @IBOutlet weak var requestLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        NSLayoutConstraint.activate([
            contentView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width-48),
            contentView.heightAnchor.constraint(equalToConstant: 140),
        ])
        contentView.layer.cornerRadius = 4
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 0.125)
        mainImage.layer.cornerRadius = mainImage.frame.height/2
        mainImage.layer.borderWidth = 1
        mainImage.layer.borderColor = UIColor.clear.cgColor
        
    }
    
  

    
}
