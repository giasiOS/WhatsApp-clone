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
                inboxFooterView
                    .listRowSeparator(.hidden)
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
            Menu {
                Button {
                    
                } label: {
                    Label("Select Chats", systemImage: "checkmark.circle")
                }
            } label: {
                Button {
                    
                } label: {
                    Image(systemName: "ellipsis.circle")
                }
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
    
    private var inboxFooterView: some View {
        HStack {
         Image(systemName: "lock.fill")
            
            Text("Your personal messages are")
               
            Button("end-to-end encrypted") {
                
            }
            .buttonStyle(.plain)
            .fontWeight(.semibold)
            .foregroundStyle(.blue)
            .padding(.leading, -2)
        }
        .foregroundStyle(.gray)
        .font(.caption2)
        .padding(.horizontal)
    }
}
