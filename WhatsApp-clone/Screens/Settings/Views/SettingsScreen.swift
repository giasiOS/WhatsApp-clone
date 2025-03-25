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
                // Header
                Section {
                    ProfileCellView()
                    SettingsListCellView(item: .media)
                }
                // Body
                Section {
                    SettingsListCellView(item: .broadCastLists)
                    SettingsListCellView(item: .starredMessages)
                    SettingsListCellView(item: .linkedDevices)
                }
                
                Section {
                    SettingsListCellView(item: .account)
                    SettingsListCellView(item: .privacy)
                    SettingsListCellView(item: .chats)
                    SettingsListCellView(item: .notfications)
                    SettingsListCellView(item: .storage)
                }
                
                Section {
                    SettingsListCellView(item: .help)
                    SettingsListCellView(item: .tellFriend)
                }
            }
            .searchable(text: .constant(""))
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsScreen()
}

extension SettingsScreen {
    
    private struct ProfileCellView: View {
        var body: some View {
            HStack {
                Circle()
                    .frame(width: 48, height: 48)
                VStack(alignment: .leading) {
                    HStack {
                        Text("Evgeny")
                            .font(.title3)
                            .fontWeight(.medium)
                            
                        Button {
                            
                        } label: {
                            Image(systemName: "qrcode")
                                .padding(6)
                                .foregroundStyle(.blue)
                                .background(Color(.systemGroupedBackground))
                                .clipShape(Circle())
                        }
                        .frame(maxWidth: .infinity,alignment: .trailing)
                    }
                    Text("Hey there! I am using WhatsApp.")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
            }
        }
    }
}
