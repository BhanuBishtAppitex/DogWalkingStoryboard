//
//  DogWalkingOneViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 03/11/22.
//

import UIKit

class DogWalkingOneViewController: UIViewController {

    @IBOutlet weak var searchNowButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateInitialView()
        // Do any additional setup after loading the view.
    }
    
    func updateInitialView() {
        // font for button
        searchNowButton.titleLabel?.font = UIFont(name: C.Fonts.Poppins.SemiBold, size: 16)
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
