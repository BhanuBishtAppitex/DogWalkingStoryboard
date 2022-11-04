//
//  MorePageVIewControllerViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 02/11/22.
//

import UIKit

class MorePageViewController: UIViewController {

    @IBOutlet weak var tabelView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabelView.separatorStyle = .none
        tabelView.heightAnchor.constraint(equalToConstant: 100).isActive = true
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
        print("mainLabel : \(ModelForMorePage.mainTitle[indexPath.section])")
        cell.mainLabel.text = ModelForMorePage.mainTitle[indexPath.section]
        cell.rightImgae.image = UIImage(named: ModelForMorePage.rightImage)
        return cell
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
