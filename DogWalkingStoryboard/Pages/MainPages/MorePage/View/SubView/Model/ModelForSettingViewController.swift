//
//  ModelForSettingViewController.swift
//  DogWalkingStoryboard
//
//  Created by wOOx Technology on 07/11/22.
//

import Foundation

struct ModelForSettingViewController {
    
    struct GeneralCell {
        static let leftLabel: [String] = [
            "Account Settings",
            "Notification",
            "Log out"
        ]
        static let rightLabel: [String] = [
            "","",""
        ]
        static let rightImage: [String] = [
            "Arrow", "Arrow", "Arrow"
        ]
    }
    struct AboutCell {
        static let leftLabel: [String] = [
            "Version",
            "Varient",
            "Privacy Statement",
            "Acknowledgments",
            "Terms of Service"
        ]
        static let rightLabel: [String] = [
            "23.9564.00",
            "Release",
            "",
            "",
            "",
        ]
        static let rightImage: [String] = [
            "",
            "",
            "Arrow",
            "Arrow",
            "Arrow",
        ]
    }
}
