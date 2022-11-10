//
//  YourPetsViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 02/11/22.
//

import UIKit

class YourPetsViewController: UIViewController {
    let nib = CellForYourPet.nib
    let identifier = CellForYourPet.identifierString

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var addAPetButton: CustomUIButtom!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateInitialView()
        tableView.register(nib, forCellReuseIdentifier: identifier)
    }
    
    func updateInitialView(){
        // font for button
        addAPetButton.titleLabel?.font = UIFont(name: C.Fonts.Poppins.SemiBold, size: 16)
    }
}

extension YourPetsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:identifier, for: indexPath) as! CellForYourPet
        cell.mainImage.image = UIImage(named: ModelForYourPet.mainImage)
        cell.nameText.text = ModelForYourPet.nameText
        cell.categoryText.text = ModelForYourPet.descriptionText
        cell.moreDetailsText.text = ModelForYourPet.descriptionText
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
}
