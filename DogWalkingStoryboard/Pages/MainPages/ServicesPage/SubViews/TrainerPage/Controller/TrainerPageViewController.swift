//
//  TrainerPageViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 07/11/22.
//

import UIKit

class TrainerPageViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var reviewsButton: UIButton!
    @IBOutlet weak var servicesButton: UIButton!
    @IBOutlet weak var sepratorLeadingAnchor: NSLayoutConstraint!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var tableViewForInfoView: UITableView!
    @IBOutlet weak var tableViewForReviewsView: UITableView!
    
    //MARK: - data and cell for tableViews
    let cellForInfoView = CellForMorePage.self
    let dataForInfoView = ModelForTrainerPageInfoView.self
    let cellForReviewsView = CellForReviewsView.self
    let dataForReviewsView = ModelForTrainerPageReviewView.self

    
    //MARK: - view methods
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableViewForInfoView.register(cellForInfoView.nib, forCellReuseIdentifier: cellForInfoView.identificationString)
        tableViewForReviewsView.register(cellForReviewsView.nib, forCellReuseIdentifier: cellForReviewsView.identifierString)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.isDirectionalLockEnabled = true
    }
    
    
    //MARK: - Button press methods
    
    @IBAction func contactButtonPressed(_ sender: UIButton) {
        print("ContactButtonPressed")
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func segmentedControllerButtonPressed(_ sender: UIButton) {
        switch sender.titleLabel?.text{
        case "Info":
            print("Info Button Presssed")
            UIView.animate(withDuration: 0.5) {
                self.sepratorLeadingAnchor.constant = 0
                self.scrollView.contentOffset.x = 0
                self.scrollView.isScrollEnabled = true
                
                
            }
        case "Reviews":
            print("Reviews Button Presssed")
            UIView.animate(withDuration: 0.5) {
                self.sepratorLeadingAnchor.constant = self.infoButton.frame.width
                self.scrollView.contentOffset.x = self.view.frame.width
                self.scrollView.isScrollEnabled = false
                
            }
        case "Services":
            print("Services Button Presssed")
            UIView.animate(withDuration: 0.5) {
                self.sepratorLeadingAnchor.constant = self.infoButton.frame.width*2
                self.scrollView.contentOffset.x = self.view.frame.width*2
                self.scrollView.isScrollEnabled = true
            }
        default:
            print("default value")
            
        }
        UIView.animate(withDuration: 0.5) {
            self.scrollView.contentOffset.y = 0
        }
    }
}

//MARK: - segmented controll' scrollView delegate method
extension TrainerPageViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("X offset: \(scrollView.contentOffset.x)")
        print("view width: \(view.frame.width)")
        let xOffSet = scrollView.contentOffset.x
        let frameWidht = view.frame.width
        if xOffSet > 0 && xOffSet < frameWidht-50 || xOffSet < 0 {
            print("first")
            scrollView.contentOffset.x = 0
            scrollView.isScrollEnabled = true
        }
        if xOffSet > frameWidht-50 && xOffSet < frameWidht*2-50 {
            print("second")
            scrollView.contentOffset.x = frameWidht
            scrollView.isScrollEnabled = false
        }
        if xOffSet > frameWidht*2-50 && xOffSet < frameWidht*3 {
            print("third")
            scrollView.contentOffset.x = frameWidht*2
            scrollView.isScrollEnabled = true
        }
    }
}

//MARK: - tableView' delegate and datasource methods
extension TrainerPageViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        if tableView == self.tableViewForInfoView {
            return dataForInfoView.mainText.count
        }
        if tableView == self.tableViewForReviewsView {
            return dataForReviewsView.nameLabel.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // cell for infoView
      if tableView == tableViewForInfoView {
          guard let cell = tableView.dequeueReusableCell(withIdentifier: cellForInfoView.identificationString, for: indexPath) as? CellForMorePage else { return UITableViewCell()}
          cell.mainView.backgroundColor = UIColor(named: C.Colors.AccentBlur)
          if dataForInfoView.rightImage == "" {
              cell.rightImage.isHidden = true
          }
          cell.leftImage.image = UIImage(named: dataForInfoView.leftImage[indexPath.section])
          cell.mainLabel.text = dataForInfoView.mainText[indexPath.section]
    
          return cell
      }
        // cell for reviews view
        if tableView == tableViewForReviewsView {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: cellForReviewsView.identifierString, for: indexPath) as?  CellForReviewsView else { return UITableViewCell()}
            let data = dataForReviewsView
            let index = indexPath.section
            cell.profileImage.image = UIImage(named: data.profileImage)
            cell.nameLabel.text = data.nameLabel[index]
            cell.dateLabel.text = data.dateLabel[index]
            cell.reviewLabel.text = data.reviewLabel[index]
            return cell
        }
        
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: cellForReviewsView.identifierString, for: indexPath) as! CellForReviewsView
            return cell
        }
         
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }
    
}
