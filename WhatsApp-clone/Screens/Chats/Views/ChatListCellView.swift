//
//  ChatListCellView.swift
//  WhatsApp-clone
//
//  Created by ali on 24/03/2025.
//

import SwiftUI

struct ChatListCellView: View {
    var body: some View {
        HStack(alignment:.top) {
            // image
            Image(systemName: "person.circle.fill")
                .font(.system(size: 50))
                .foregroundStyle(.whatsAppWhite, .gray)
            // text section
            VStack(alignment: .leading) {
                Text("Evgeniy")
                    .fontWeight(.semibold)
                HStack(spacing: 4) {
                    Image(systemName: "photo.fill")
                    
                    Text("Photo Message")
                }
                .font(.footnote)
                .foregroundStyle(.gray)
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            // date info
            
            Text("Yesterday")
                .font(.caption)
                .fontWeight(.medium)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    List {
        ChatListCellView()
    }
    .listStyle(.plain)
}
