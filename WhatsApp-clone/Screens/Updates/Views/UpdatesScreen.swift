//
//  UpdatesScreen.swift
//  WhatsApp-clone
//
//  Created by ali on 21/03/2025.
//

import SwiftUI

struct UpdatesScreen: View {
    var body: some View {
        NavigationStack {
            
            List {
                
            }
            .searchable(text: .constant(""))
            .navigationTitle("Updates")
            .toolbar {
                trailingNavItem
            }
        }
    }
}

#Preview {
    UpdatesScreen()
}

extension UpdatesScreen {
    @ToolbarContentBuilder
    private var trailingNavItem: some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button {
                
            } label: {
                Image(systemName: "ellipsis.circle")
            }
        }
    }
}
