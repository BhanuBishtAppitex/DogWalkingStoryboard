//
//  TrainerPageViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 07/11/22.
//

import UIKit

class TrainerPageViewController: UIViewController {
    
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var reviewsButton: UIButton!
    @IBOutlet weak var servicesButton: UIButton!
    @IBOutlet weak var sepratorView: UIView!
    @IBOutlet weak var sepratorLeadingAnchor: NSLayoutConstraint!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    //MARK: - view methods
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
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
    
    
    @IBAction func segmentedControllerButtonPressed(_ sender: UIButton) {
        switch sender.titleLabel?.text{
        case "Info":
            print("Info Button Presssed")
            UIView.animate(withDuration: 1.0) {
                self.sepratorLeadingAnchor.constant = 0
                self.scrollView.contentOffset.x = 0
                
            }
        case "Reviews":
            print("Reviews Button Presssed")
            UIView.animate(withDuration: 1.0) {
                self.sepratorLeadingAnchor.constant = self.infoButton.frame.width
                self.scrollView.contentOffset.x = self.view.frame.width
            }
        case "Services":
            print("Services Button Presssed")
            UIView.animate(withDuration: 1.0) {
                self.sepratorLeadingAnchor.constant = self.infoButton.frame.width*2
                self.scrollView.contentOffset.x = self.view.frame.width*2
            }
        default:
            print("default vauew")
            
        }
    }
}


extension TrainerPageViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("X offset: \(scrollView.contentOffset.x)")
        print("view width: \(view.frame.width)")
        let xOffSet = scrollView.contentOffset.x
        let frameWidht = view.frame.width
        if xOffSet > 0 && xOffSet < frameWidht-50 || xOffSet < 0 {
            print("first")
            scrollView.contentOffset.x = 0
        }
        if xOffSet > frameWidht-50 && xOffSet < frameWidht*2-50 {
            print("second")
            scrollView.contentOffset.x = frameWidht
        }
        if xOffSet > frameWidht*2-50 && xOffSet < frameWidht*3 {
            print("third")
            scrollView.contentOffset.x = frameWidht*2
        }
    }
}
