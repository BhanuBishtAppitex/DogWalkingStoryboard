//
//  ContactPageViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 08/11/22.
//

import UIKit

class ContactPageViewController: UIViewController {
    
    @IBOutlet weak var scheduleTableView: UITableView!
    @IBOutlet weak var petsTableView: UITableView!
    @IBOutlet weak var contactTableView: UITableView!
    
    let cell = CellForSettingPage.self
    let dataForScheduleTableView = ModelForContactPage.ModelForSchedule.self
    let dataForPetsTableView = ModelForContactPage.ModelForPets.self
    let dataForContactTableView = ModelForContactPage.ModelForContact.self
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scheduleTableView.register(cell.nib, forCellReuseIdentifier: cell.identifierString)
        petsTableView.register(cell.nib, forCellReuseIdentifier: cell.identifierString)
        contactTableView.register(cell.nib, forCellReuseIdentifier: cell.identifierString)
        
    }
    
    //MARK: - Button press methods
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
}

extension ContactPageViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        switch tableView {
        case scheduleTableView:
            return dataForScheduleTableView.mainText.count
        case petsTableView:
            return 1
        case contactTableView:
            return dataForContactTableView.mainText.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cell.identifierString, for: indexPath) as! CellForSettingPage
        let index = indexPath.section
        cell.rightLabel.isHidden = true
        cell.rightSwitch.isHidden = true
        if tableView == scheduleTableView {
            let data = dataForScheduleTableView
            cell.leftLabel.text = data.mainText[index]
        }
        if tableView == petsTableView {
            let data = dataForPetsTableView
            cell.leftLabel.text = data.mainText
            //cell.leftLabel.text = data.mainText[index]
        }
        if tableView == contactTableView {
            let data = dataForContactTableView
            cell.leftLabel.text = data.mainText[index]
            if data.toggelPosition != 0 {
                if data.toggelPosition == index {
                    cell.rightSwitch.isHidden = false
                    cell.rightImage.isHidden = true
                }
            }
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }
    
    
    
}
