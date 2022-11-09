//
//  AddAPetViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 04/11/22.
//

import UIKit

class AddAPetViewController: UIViewController {

    @IBOutlet weak var uploadImageView: UIImageView!
    @IBOutlet weak var typeOfPetStackView: UIStackView!
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        uploadImageView.isUserInteractionEnabled = true
        let gesture = UITapGestureRecognizer(target: self, action: #selector(uploadImagePressed(tapGestureRecognizer:)))
        uploadImageView.addGestureRecognizer(gesture)
        typeOfPetStackView.layer.shadowColor = UIColor.red.cgColor
        typeOfPetStackView.layer.shadowOffset = CGSize(width: 10, height: 10)
        typeOfPetStackView.layer.shadowRadius = 8
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    
    //MARK: - button press methods
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    @objc
    func uploadImagePressed(tapGestureRecognizer: UITapGestureRecognizer){
        print("Upload image pressed")
        if let vc = storyboard?.instantiateViewController(withIdentifier: "AddAPetTwo") {
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        }
      
    }
    
}
