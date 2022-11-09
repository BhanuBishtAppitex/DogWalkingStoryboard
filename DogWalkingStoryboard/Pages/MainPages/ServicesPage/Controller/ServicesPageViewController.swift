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
       
        NSLayoutConstraint.activate([
            cell.contentView.widthAnchor.constraint(equalToConstant: (collectionView.frame.width/2)-12),
            cell.contentView.heightAnchor.constraint(equalToConstant: (collectionView.frame.height/3-15))
        ])
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 4 {
            let storyboard = UIStoryboard(name: "DogWalking", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "DogWalkingOne")
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        }
        if indexPath.row == 3 {
            let vc = DoggyDayCareViewController()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        }
    }
    


}
