//
//  ChatsScreen.swift
//  WhatsApp-clone
//
//  Created by ali on 24/03/2025.
//

import SwiftUI

struct ChatsScreen: View {
    var body: some View {
        NavigationStack {
            List {
                ArchivedCellView()
                
                ForEach(0..<2) { item in
                    ChatListCellView()
                }
            }
            .listStyle(.plain)
            .searchable(text: .constant(""))
            .navigationTitle("Chats")
            .toolbar {
                trailingNavItems
            }
        }
    }
}

#Preview {
    ChatsScreen()
}

extension ChatsScreen {
    
    @ToolbarContentBuilder
    private var trailingNavItems: some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button {
                
            } label: {
                Image(systemName: "circle")
                    .bold()
                    .imageScale(.medium)
                    .foregroundStyle(LinearGradient(colors: [.teal, .purple], startPoint: .leading, endPoint: .bottomTrailing))
            }
        }
        
        ToolbarItem(placement: .topBarTrailing) {
            Button {
                
            } label: {
                Image(systemName: "camera")
                  
            }
        }
        
        ToolbarItem(placement: .topBarTrailing) {
            Button {
                
            } label: {
                Image(systemName: "plus.circle.fill")
                    .foregroundStyle(.whatsAppWhite, .blue)
            }
        }
        
        ToolbarItem(placement: .topBarLeading) {
            Button {
                
            } label: {
                Image(systemName: "ellipsis.circle")
            }
        }
    }
    
    private struct ArchivedCellView: View {
        var body: some View {
            HStack {
                Image(systemName: "archivebox.fill")
                    .imageScale(.large)
                
                Text("Archived")
                    .fontWeight(.medium)
            }
            .foregroundStyle(.gray)
            .padding(12)
        }
    }
}
