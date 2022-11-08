//
//  ModelForContactPage.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 08/11/22.
//

import Foundation

struct ModelForContactPage {
    struct ModelForSchedule {
        static let mainText: [String] = [
            "Service dates",
            "Drop-off range",
            "Pick-up range"
        ]
        static let toggelPosition: Int = 0
    }
    struct ModelForPets {
        static let mainText: String = "Add a pet"
        static let toggelPosition: Int = 0
    }
    struct ModelForContact {
        static let mainText: [String] = [
            "Phone number",
            "Reply notification",
        ]
        static let toggelPosition: Int = 1
    }
    
}
