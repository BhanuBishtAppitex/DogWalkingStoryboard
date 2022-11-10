//
//  DogWalkingTwoViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 09/11/22.
//

import UIKit

class DogWalkingTwoViewController: UIViewController {
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.titleLabel?.font = UIFont(name: C.Fonts.Poppins.SemiBold, size: 16)
     
    }
    

    @IBAction func backButtonPessed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
