//
//  DoggyDayCareViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 07/11/22.
//

import UIKit

class DoggyDayCareViewController: UIViewController {
    
    let cell = CellForDoggyDayCare.self
    let data = ModelForDoggyDayCare.self
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(cell.nib, forCellReuseIdentifier: cell.identifierString)
        tableView.dataSource = self
        tableView.delegate = self
    }
    

}


extension DoggyDayCareViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.nameLabel.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cell.identifierString, for: indexPath) as! CellForDoggyDayCare
        let index = indexPath.section
        cell.profileImage.image = UIImage(named: data.profileImage)
        cell.experienceLabel.text = data.experienceLabel[index]
        cell.nameLabel.text = data.nameLabel[index]
        cell.reviewLabel.text = "(" + data.reviewLabel[index] + " Reviews)"
        cell.discriptionLabel.text = data.discriptionLabel[index]
        cell.priceLabel.text = data.priceLabel[index]
        cell.durationLabel.text = data.durationLabel[index]
        cell.discriptionLabel.text = data.discriptionLabel[index]
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "TrainerPageStoryBoard", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TrainerPage")
        present(vc, animated: true)
    }
    
    
}
