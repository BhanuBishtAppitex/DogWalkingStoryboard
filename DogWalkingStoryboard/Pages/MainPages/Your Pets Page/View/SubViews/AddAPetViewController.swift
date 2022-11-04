//
//  AddAPetViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 04/11/22.
//

import UIKit

class AddAPetViewController: UIViewController {

    @IBOutlet weak var uploadImageView: UIImageView!
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        uploadImageView.isUserInteractionEnabled = true
        let gesture = UITapGestureRecognizer(target: self, action: #selector(uploadImagePressed(tapGestureRecognizer:)))
        uploadImageView.addGestureRecognizer(gesture)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    
    @objc
    func uploadImagePressed(tapGestureRecognizer: UITapGestureRecognizer){
        print("Upload image pressed")
        if let vc = storyboard?.instantiateViewController(withIdentifier: "AddAPetTwo") {
            present(vc, animated: true)
        }
      
    }
    

  


}
