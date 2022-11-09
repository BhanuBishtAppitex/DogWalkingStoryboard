//
//  SettingViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 04/11/22.
//

import UIKit

class SettingViewController: UIViewController {
    
    let data = ModelForSettingViewController.self
    let cell = CellForSettingPage.self
    
    @IBOutlet weak var generalTableView: UITableView!
    @IBOutlet weak var aboutTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generalTableView.delegate = self
        generalTableView.dataSource = self
        aboutTableView.dataSource = self
        aboutTableView.delegate = self
        generalTableView.register(cell.nib, forCellReuseIdentifier: cell.identifierString)
        aboutTableView.register(cell.nib, forCellReuseIdentifier: cell.identifierString)
    }



}

extension SettingViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if tableView == self.generalTableView {
            return data.GeneralCell.leftLabel.count
        }
        else {
            return data.AboutCell.leftLabel.count
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cell.identifierString, for: indexPath) as! CellForSettingPage
        cell.rightSwitch.isHidden = true
        let section = indexPath.section
        if tableView == self.generalTableView {
            let genralData = data.GeneralCell.self
            cell.leftLabel.text = genralData.leftLabel[section]
            cell.rightLabel.text = genralData.rightLabel[section]
            cell.rightImage.image = UIImage(named: genralData.rightImage[section])
            if genralData.rightLabel[section] == "nil" {
                cell.rightLabel.isHidden = true
            } else {
                cell.rightImage.isHidden = true
            }
            return cell
        } else {
            let aboutData = data.AboutCell.self
            cell.leftLabel.text = aboutData.leftLabel[section]
            cell.rightLabel.text = aboutData.rightLabel[section]
            cell.rightImage.image = UIImage(named: aboutData.rightImage[section])
            if aboutData.rightLabel[section] == "nil" {
                cell.rightLabel.isHidden = true
            }
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if tableView == generalTableView {
            return 15
        }   else {
            return 10
        }
        
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }
    

    
}
