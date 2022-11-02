//
//  ViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 01/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    //MARK: - IBOutLet
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var skipButton: UIButton!
    @IBOutlet weak var swipeLeftText: UILabel!
    @IBOutlet weak var continueButton: UIButton!
    
    //MARK: - View methods
    override func viewDidLoad() {
        super.viewDidLoad()
        pageControl.numberOfPages = ModelForIntroductoryPage.mainTitle.count
        continueButton.isHidden = true
    }
    
    //MARK: - Button methods
    @IBAction func skipButtonPressed(_ sender: UIButton) {
       // if let vc = storyboard?.instantiateViewController(withIdentifier: "GettingStartedStoryboard"){
       //     present(vc, animated: true)
       // }
        
    }
    
    
    
}

//MARK: - Extension for collection view
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ModelForIntroductoryPage.mainImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellForMain", for: indexPath) as! CellForMainPage
        cell.mainImage.image = UIImage(named: ModelForIntroductoryPage.mainImage[indexPath.row])
        cell.mainTitle.text = ModelForIntroductoryPage.mainTitle[indexPath.row]
        cell.secondTitle.text = ModelForIntroductoryPage.secondTitle[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    //MARK: - scroll view method to assing page controller current page
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let scrollPos = scrollView.contentOffset.x / view.frame.width
        pageControl.currentPage = Int(scrollPos)
        print("scrollView.contentOffset.x = \(scrollView.contentOffset.x)")
        
        if scrollView.contentOffset.x >= view.frame.width*CGFloat((ModelForIntroductoryPage.mainTitle.count-1)){
            pageControl.isHidden = true
            skipButton.isHidden = true
            swipeLeftText.isHidden = true
            continueButton.isHidden = false
            continueButton.layer.cornerRadius = continueButton.frame.height/2
            
        } else {
            pageControl.isHidden = false
            skipButton.isHidden = false
            swipeLeftText.isHidden = false
            continueButton.isHidden = true
        }
    }
}

