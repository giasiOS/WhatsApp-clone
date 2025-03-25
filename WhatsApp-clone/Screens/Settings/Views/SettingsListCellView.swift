//
//  SettingsListCellView.swift
//  WhatsApp-clone
//
//  Created by ali on 25/03/2025.
//

import SwiftUI

struct SettingsListCellView: View {
    
    let item: SettingsItem
    
    var body: some View {
        HStack {
            Group {
                switch item.imageType {
                case .systemImage:
                    Image(systemName: item.imageName)
                case .assetImage:
                    Image(item.imageName)
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFit()
                        .foregroundStyle(.white)
                }
            }
            .padding(4)
            .foregroundStyle(.white)
            .frame(width: 28, height: 28)
            .background(item.backgroundColor)
            .clipShape(.rect(cornerRadius: 4))
                      
            Text(item.title)
                .font(.headline)
                .fontWeight(.medium)
        }
        .frame(maxWidth: .infinity,alignment: .leading)
    }
}

#Preview {
    List {
        ForEach(0..<1) { _ in
            SettingsListCellView(item: .chats)
        }
    }
}
