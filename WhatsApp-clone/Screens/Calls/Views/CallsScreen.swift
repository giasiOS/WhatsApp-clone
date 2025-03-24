//
//  CallsScreen.swift
//  WhatsApp-clone
//
//  Created by ali on 24/03/2025.
//

import SwiftUI

struct CallsScreen: View {
    
    @State private var selectedHistroy: CallHistory = .all
    
    var body: some View {
        NavigationStack {
            List {
                
            }
            .navigationTitle("Calls")
            .searchable(text: .constant(""))
            .toolbar {
                leadingNavItem()
                navBarSegmentedTabItem()
                trailingNavItem()
            }
        }
    }
}

#Preview {
    CallsScreen()
}

extension CallsScreen {
    
    @ToolbarContentBuilder
    private func leadingNavItem() -> some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button("Edit") {
                
            }
        }
    }
    
    private func navBarSegmentedTabItem() -> some ToolbarContent {
        ToolbarItem(placement: .principal) {
            Picker("",selection: $selectedHistroy) {
                ForEach(CallHistory.allCases) { item in
                    Text(item.rawValue.capitalized)
                        .tag(item)
                }
            }
            .pickerStyle(.segmented)
            .padding(.horizontal, 48)
        }
    }
    
    @ToolbarContentBuilder
    private func trailingNavItem() -> some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button {
                
            } label: {
               Image(systemName: "phone.arrow.up.right")
            }
        }
    }
    
    private enum CallHistory: String, CaseIterable, Identifiable {
        case all, missed
        
        var id: String {
            rawValue
        }
    }
}
