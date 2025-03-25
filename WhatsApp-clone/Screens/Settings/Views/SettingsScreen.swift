//
//  SettingsScreen.swift
//  WhatsApp-clone
//
//  Created by ali on 24/03/2025.
//

import SwiftUI

struct SettingsScreen: View {
    var body: some View {
        NavigationStack {
            List {
                
            }
            .searchable(text: .constant(""))
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsScreen()
}
