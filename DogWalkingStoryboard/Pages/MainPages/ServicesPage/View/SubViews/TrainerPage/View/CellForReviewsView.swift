//
//  CellForReviewsView.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 08/11/22.
//

import UIKit

class CellForReviewsView: UITableViewCell {
    
    static let identifierString: String = "CellForReviewsView"
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var reviewLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        mainView.layer.borderWidth = 1
        mainView.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 0.125)
        mainView.layer.cornerRadius = 4
        profileImage.layer.cornerRadius = profileImage.frame.height/2
    
    }
    
}
