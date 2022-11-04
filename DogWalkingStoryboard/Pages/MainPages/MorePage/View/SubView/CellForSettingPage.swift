//
//  CellForSettingPage.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 04/11/22.
//

import UIKit

class CellForSettingPage: UITableViewCell {

    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var rightView: UIView!
    @IBOutlet weak var rightLabel: UILabel!
    @IBOutlet weak var rightImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        rightLabel.isHidden = true
        NSLayoutConstraint.activate([
            contentView.heightAnchor.constraint(equalToConstant: 55),
            contentView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width-48),
        ])
        contentView.layer.cornerRadius = contentView.frame.height/2
    }
}
