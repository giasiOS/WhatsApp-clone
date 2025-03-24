//
//  CallsListCellView.swift
//  WhatsApp-clone
//
//  Created by ali on 24/03/2025.
//

import SwiftUI

struct CallsListCellView: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 42, height: 42)
            VStack(alignment:.leading) {
                Text("John Smith")
                HStack(spacing: 4) {
                    Image(systemName: "phone.arrow.up.right.fill")
                        Text("Outgoing")
                }
                .font(.footnote)
                .foregroundStyle(.gray)
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            HStack {
                Text("Yesterday")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                
                Button {
                    
                } label: {
                    Image(systemName: "info.circle")
                        .imageScale(.large)
                }
                .buttonStyle(.plain)
            }
        }
    }
}

#Preview {
    CallsListCellView()
}
