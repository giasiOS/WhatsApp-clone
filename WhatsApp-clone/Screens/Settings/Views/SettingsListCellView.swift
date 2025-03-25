//
//  SettingsListCellView.swift
//  WhatsApp-clone
//
//  Created by ali on 25/03/2025.
//

import SwiftUI

struct SettingsListCellView: View {
    var body: some View {
        HStack {
            Image(systemName: "at")
                .padding(4)
                .foregroundStyle(.white)
                .background(.blue)
                .clipShape(.rect(cornerRadius: 4))
            
            Text("Settings cell")
                .font(.headline)
                .fontWeight(.medium)
        }
        .frame(maxWidth: .infinity,alignment: .leading)
    }
}

#Preview {
    List {
        ForEach(0..<3) { _ in
            SettingsListCellView()
        }
    }
}
