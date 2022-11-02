//
//  ServicesPageViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 02/11/22.
//

import UIKit

class ServicesPageViewController: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.showsVerticalScrollIndicator = false
        
    }
    
    
    
}

extension ServicesPageViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ModelForServicesPage.mainTitle.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellForServicePage", for: indexPath) as! CellForServicesPage
        cell.mainImage.image = UIImage(named: ModelForServicesPage.mainImage[indexPath.row])
        cell.mainTitle.text = ModelForServicesPage.mainTitle[indexPath.row]
        cell.secondTitle.text = ModelForServicesPage.secondTitle[indexPath.row]
        cell.mainView.layer.cornerRadius = 12
        cell.mainView.layer.borderWidth = 1
        cell.mainView.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.125).cgColor
        NSLayoutConstraint.activate([
            cell.mainView.widthAnchor.constraint(equalToConstant: (collectionView.frame.width/2)-12),
            cell.mainView.heightAnchor.constraint(equalToConstant: (collectionView.frame.height/3-15))
        ])
        return cell
        
    }
    


}
