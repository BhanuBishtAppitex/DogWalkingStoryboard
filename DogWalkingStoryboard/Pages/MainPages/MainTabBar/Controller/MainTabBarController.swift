//
//  MainTabBarController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 04/11/22.
//

import UIKit

class MainTabBarController: UITabBarController {

    @IBOutlet weak var tabbar: UITabBar!
    fileprivate lazy var defaultTabBarHeight = { tabBar.frame.size.height }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        ChangeRadiusOfTabbar()
        ChangeHeightOfTabbar()
        tabBar.backgroundColor = UIColor(named: C.Colors.AccentBlur)
        
      
    }
    
    func ChangeRadiusOfTabbar(){
        
            self.tabBar.layer.masksToBounds = true
            self.tabBar.isTranslucent = true
            //self.tabBar.layer.cornerRadius = tabBar.frame.height/2
            self.tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
            self.tabBar.layer.borderWidth = 1
            self.tabBar.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 0.125)
        
    }
    
    func ChangeHeightOfTabbar(){
     
       //  if UIDevice().userInterfaceIdiom == .phone {
       //      var tabFrame            = tabBar.frame
       //      tabFrame.size.height    = (0.1030)*view.frame.height
       //      tabFrame.origin.y       = view.frame.size.height - ((0.1030)*view.frame.height)
       //   //   tabFrame.origin.x       = view.frame.minX + 20
       //      tabBar.frame            = tabFrame
       //  }
        
        NSLayoutConstraint.activate([
         //   tabbar.centerXAnchor.constraint(equalTo: view.centerXAnchor),
          //  tabbar.widthAnchor.constraint(equalToConstant: view.frame.width),
           // tabbar.heightAnchor.constraint(equalToConstant: view.frame.size.height - ((0.1030)*view.frame.height) ),
          //  tabbar.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
     
        }
        
    

}
