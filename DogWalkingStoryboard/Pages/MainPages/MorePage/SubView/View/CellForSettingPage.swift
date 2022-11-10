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
    @IBOutlet weak var rightSwitch: UISwitch!
    
    //MARK: - identifier and nib 
    static let identifierString: String = "CellForSettingPage"
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
        contentView.layer.cornerRadius = contentView.frame.height/2
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 0.125)
        rightView.backgroundColor = .clear
        NSLayoutConstraint.activate([
            contentView.heightAnchor.constraint(equalToConstant: 55),
            contentView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width-48),
        ])
        
    }
}
