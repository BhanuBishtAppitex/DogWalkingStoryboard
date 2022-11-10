//
//  InboxViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 03/11/22.
//

import UIKit

class InboxViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateInitialView()
        tableView.register(CustomTableViewCell.nib, forCellReuseIdentifier: CustomTableViewCell.indetifierText)
        
    }
    
    func updateInitialView() {
        segmentedControl.backgroundColor = UIColor(red: 0.991, green: 0.925, blue: 0.909, alpha: 1)
        segmentedControl.selectedSegmentTintColor = .white
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(named: C.Colors.AccentColor)]
        let titleTextAttributes2 = [NSAttributedString.Key.foregroundColor: UIColor(named: C.Colors.TextDullColor)]
        segmentedControl.setTitleTextAttributes(titleTextAttributes2 as [NSAttributedString.Key : Any], for: .normal)
        segmentedControl.setTitleTextAttributes(titleTextAttributes as [NSAttributedString.Key : Any], for: .selected)
    }
 
    //MARK: - button presss methods
    @IBAction func segmentedControlValueChanged(_ sender: UISegmentedControl) {
       
    }
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}

extension InboxViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return ModelForInboxPage.mainImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.indetifierText, for: indexPath) as! CustomTableViewCell
        
        let data = ModelForInboxPage.self
        let index = indexPath.section
        
        cell.mainImage.image = UIImage(named: data.mainImage[index])
        cell.nameLabel.text = data.nameLabel[index]
        cell.boardingLabel.text = data.bordingLabel[index]
        cell.requestLabel.text = data.requestLabel[index]
        cell.statusLabel.text = data.statusLabel[index]
        cell.timeLabel.text = data.timeLabel[index]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor.clear
        return view
    }
    
    
    
    
    
}
