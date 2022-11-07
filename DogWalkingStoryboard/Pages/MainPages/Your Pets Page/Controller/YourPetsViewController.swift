//
//  YourPetsViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 02/11/22.
//

import UIKit

class YourPetsViewController: UIViewController {

    @IBOutlet weak var tabelView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSLayoutConstraint.activate([
            tabelView.heightAnchor.constraint(equalToConstant: 95)
        ])
        tabelView.backgroundColor = UIColor.clear
        tabelView.isScrollEnabled = false
        tabelView.separatorStyle = .none
       
    }
}

extension YourPetsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellForYourPetsPage", for: indexPath) as! CellForYourPet
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
