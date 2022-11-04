//
//  CellForMorePage.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 02/11/22.
//

import UIKit

class CellForMorePage: UITableViewCell {
    
    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var rightImgae: UIImageView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var stackView: UIStackView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        mainView.layer.cornerRadius = mainView.frame.height/2
        mainView.layer.borderWidth = 1
        mainView.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 0.125)
        NSLayoutConstraint.activate([
            mainView.heightAnchor.constraint(equalToConstant: 55),
        ])
       
    }

}
