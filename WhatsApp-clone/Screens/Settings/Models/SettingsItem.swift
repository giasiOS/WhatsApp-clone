//
//  SettingsItem.swift
//  WhatsApp-clone
//
//  Created by ali on 25/03/2025.
//

import Foundation
import SwiftUI

struct SettingsItem {
    
    let imageName: String
    var imageType: ImageType = .systemImage
    let backgroundColor: Color
    let title: String
}

extension SettingsItem {
    
     enum ImageType {
        case systemImage, assetImage
    }
    
    // MARK: Contact Info Data
        static let media = SettingsItem(
            imageName: "photo",
            backgroundColor: .blue,
            title: "Media, Links and Docs"
        )
        
        static let mute = SettingsItem(
            imageName: "speaker.wave.2.fill",
            backgroundColor: .green,
            title: "Mute"
        )
        
        static let wallpaper = SettingsItem(
            imageName: "circles.hexagongrid",
            backgroundColor: .mint,
            title: "Wallpaper & Sound"
        )
        
        static let saveToCameraRoll = SettingsItem(
            imageName: "square.and.arrow.down",
            backgroundColor: .yellow,
            title: "Save to Camera Roll"
        )
        
        static let encryption = SettingsItem(
            imageName: "lock.fill",
            backgroundColor: .blue,
            title: "Encryption"
        )
        
        static let disappearingMessages = SettingsItem(
            imageName: "timer",
            backgroundColor: .blue,
            title: "Disappearing Messages"
        )
        
        static let lockChat = SettingsItem(
            imageName: "lock.doc.fill",
            backgroundColor: .blue,
            title: "Lock Chat"
        )
        
        static let contactDetails = SettingsItem(
            imageName: "person.circle",
            backgroundColor: .gray,
            title: "Contact Details"
        )
 

}
