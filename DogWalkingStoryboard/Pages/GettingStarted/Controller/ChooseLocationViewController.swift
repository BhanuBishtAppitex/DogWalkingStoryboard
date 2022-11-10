//
//  ChooseLocationViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 10/11/22.
//

import UIKit

class ChooseLocationViewController: UIViewController {

    @IBOutlet weak var continueButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateInitialView()
    }
    
    func updateInitialView(){
        continueButton.layer.cornerRadius = continueButton.frame.height/2
        continueButton.layer.borderWidth = 2
        continueButton.layer.borderColor = UIColor(named: C.Colors.BorderColor)?.cgColor
        continueButton.titleLabel?.font = UIFont(name: C.Fonts.Poppins.SemiBold, size: 16)
    }
}
