//
//  ViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 01/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    let data = ModelForIntroductoryPage.self
    let scrollView = UIScrollView()
   
    
    
    //MARK: - IBOutLet
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var skipButton: UIButton!
    @IBOutlet weak var swipeLeftText: UILabel!
    @IBOutlet weak var continueButton: UIButton!
    
    //MARK: - View methods
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(CellForMainPage.nib, forCellWithReuseIdentifier: CellForMainPage.identifierText)
        pageControl.numberOfPages = data.mainTitle.count
        continueButton.layer.cornerRadius = continueButton.frame.height/2
        continueButton.isHidden = true
       
        
    }
    
    //MARK: - Button methods
    @IBAction func skipButtonPressed(_ sender: UIButton) {
        print("skipButtonPressed")
        
    }
    
    @IBAction func pageControllerValueChanged(_ sender: UIPageControl, forEvent event: UIEvent) {
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveEaseInOut) {
            self.collectionView.contentOffset.x = CGFloat(self.pageControl.currentPage) * self.view.frame.width
        }
    }
}

//MARK: - Extension for collection view
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.mainImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellForMainPage.identifierText, for: indexPath) as! CellForMainPage
        cell.mainImage.image = UIImage(named: data.mainImage[indexPath.row])
        cell.mainTitle.text = data.mainTitle[indexPath.row]
        cell.secondTitle.text = data.secondTitle[indexPath.row]
        if indexPath.row == data.mainTitle.count-1 {
            if view.frame.width == 375 {
                cell.mainTitle.font = UIFont(name: C.Fonts.RobotoSlab.SemiBold, size: 20)
            }
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    
    
    //MARK: - scroll view method to assing page controller current page
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.x <= 0 {
            scrollView.contentOffset.x = 0
        } else if scrollView.contentOffset.x >= scrollView.contentSize.width-scrollView.frame.width {
            UIView.animate(withDuration: 1.0, delay: 0.1, options: .curveEaseInOut) {
                scrollView.isScrollEnabled = false
            }
        }
        let scrollPos = scrollView.contentOffset.x / view.frame.width
        pageControl.currentPage = Int(scrollPos)
        let scrollViewXOffset = scrollView.contentOffset.x
        let viewWidht = view.frame.width
        let numberOfPages = data.mainTitle.count
        if scrollViewXOffset > viewWidht*CGFloat((numberOfPages-2)) {
            UIView.animate(withDuration: 2.0, delay: 0.5, options: .curveEaseInOut) {
                self.pageControl.isHidden = true
                self.skipButton.isHidden = true
                self.swipeLeftText.isHidden = true
                self.continueButton.isHidden = false
            }
        } else {
            UIView.animate(withDuration: 1.0, delay: 0.5, options: .curveEaseInOut) {
                self.pageControl.isHidden = false
                self.skipButton.isHidden = false
                self.swipeLeftText.isHidden = false
                self.continueButton.isHidden = true
            }
        }
    }
}


