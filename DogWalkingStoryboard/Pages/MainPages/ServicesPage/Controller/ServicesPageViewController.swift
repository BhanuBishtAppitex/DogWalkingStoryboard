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
        collectionView.register(CellForServicePage.nib, forCellWithReuseIdentifier: CellForServicePage.identifierText)
    }
    
    
    
    
    
}

extension ServicesPageViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ModelForServicesPage.mainTitle.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellForServicePage", for: indexPath) as! CellForServicePage
        cell.mainImage.image = UIImage(named: ModelForServicesPage.mainImage[indexPath.row])
        cell.mainTitle.text = ModelForServicesPage.mainTitle[indexPath.row]
        cell.secondTitle.text = ModelForServicesPage.secondTitle[indexPath.row]
        cell.contentView.layer.cornerRadius = 12
        cell.contentView.layer.borderWidth = 1
        cell.contentView.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        cell.contentView.layer.shadowColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.25).cgColor
        cell.contentView.layer.shadowOffset = CGSize(width: 0, height: 0)
        cell.contentView.layer.shadowOpacity = 1
        cell.contentView.layer.shadowRadius = 8
        NSLayoutConstraint.activate([
            cell.mainView.widthAnchor.constraint(equalToConstant: (collectionView.frame.width/2)-12),
            cell.mainView.heightAnchor.constraint(equalToConstant: (collectionView.frame.height/3-15))
        ])
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Index: \(indexPath.row)")
        if indexPath.row == 4 {
            let storyboard = UIStoryboard(name: "DogWalking", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "DogWalkingOne")
            present(vc, animated: true)
        }
        if indexPath.row == 3 {
            let vc = DoggyDayCareViewController()
            present(vc, animated: true)
        }
    }
    


}
