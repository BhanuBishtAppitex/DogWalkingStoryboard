//
//  CellForMorePage.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 08/11/22.
//

import UIKit

class CellForMorePage: UITableViewCell {
    
    static let identificationString: String = "CellForMorePage"
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }

   
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var rightImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        mainView.layer.borderWidth = 1
        mainView.layer.borderColor = #colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        NSLayoutConstraint.activate([
            mainView.heightAnchor.constraint(equalToConstant: 55),
            mainView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width-48)
        ])
        mainView.layer.cornerRadius = mainView.frame.height/2
    }
    
}
