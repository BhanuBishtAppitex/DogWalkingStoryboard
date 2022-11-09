//
//  MorePageVIewControllerViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 02/11/22.
//

import UIKit

class MorePageViewController: UIViewController {
    
    let data = ModelForSettingViewController.self
    let cell = CellForMorePage.self

    @IBOutlet weak var tabelView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // tabelView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        tabelView.register(cell.nib, forCellReuseIdentifier: cell.identificationString)
    }
}

extension MorePageViewController: UITableViewDelegate, UITableViewDataSource {
 
    func numberOfSections(in tableView: UITableView) -> Int {
        return ModelForMorePage.mainTitle.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabelView.dequeueReusableCell(withIdentifier: "CellForMorePage", for: indexPath) as! CellForMorePage
        cell.leftImage.image = UIImage(named: ModelForMorePage.leftImage[indexPath.section])
        cell.mainLabel.text = ModelForMorePage.mainTitle[indexPath.section]
        cell.rightImage.image = UIImage(named: ModelForMorePage.rightImage)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if ModelForMorePage.mainTitle[indexPath.section] == "Settings" {
            let vc = SettingViewController()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 15
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }
    
   
    

    
  
    
}
