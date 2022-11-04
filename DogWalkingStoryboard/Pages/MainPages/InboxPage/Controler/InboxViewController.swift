//
//  InboxViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 03/11/22.
//

import UIKit

class InboxViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var pendingButton: UIButton!
    @IBOutlet weak var upcomingButton: UIButton!
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        pendingButton.titleLabel?.font = UIFont(name: C.Fonts.Poppins.Medium, size: 14)
        upcomingButton.titleLabel?.font = UIFont(name: C.Fonts.Poppins.Medium, size: 14)
        pendingButton.layer.cornerRadius = pendingButton.frame.height/2
        upcomingButton.layer.cornerRadius = upcomingButton.frame.height/2
        pendingButton.tag = 1
        upcomingButton.tag = 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CustomTableViewCell.nib, forCellReuseIdentifier: CustomTableViewCell.indetifierText)
        
    }
    
    @IBAction func topBarButtonPessed(_ sender: UIButton) {
        if sender.tag == 1 {
            print("Pending button Pressed")
        } else {
            print("Upcoming button pressed")
           // upcomingButton.setBackgroundColor(.white, forState: .normal)
        }
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
