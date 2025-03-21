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
                TitleSection(title: "Status")
                    .listRowSeparator(.hidden, edges: .top)
                    .listRowBackground(Color.clear)
                StatusSectionHeader()
                    .listRowSeparator(.hidden, edges: .top)
                    .listRowBackground(Color.clear)
                
                StatusSection(withPlus: true) {
                    HStack {
                        CircleButton() {
                            
                        }
                        CircleButton(sfSymbol: "pencil") {
                            
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .listRowSeparator(.hidden, edges: .all)
                
                Section {
                    StatusSection(title: "Alex Park", subtitle: "1h ago") {}
                        .listRowSeparator(.hidden, edges: .all)
                } header: {
                    Text("recent updates")
                }
                TitleSection(withPlus: true)
                    .listRowSeparator(.hidden, edges: .top)
                    .listRowBackground(Color.clear)
                ChannelsListView()
                    
            }
            .listStyle(.grouped)
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
    
    private struct CircleButton: View {
        
        var sfSymbol: String = "camera.fill"
        var onTap:(() -> Void)? = nil
        
        var body: some View {
            Button {
                onTap?()
            } label: {
                Image(systemName: sfSymbol)
                    .padding(10)
                    .background(Color(.systemGray5))
                    .clipShape(Circle())
                    .bold()
            }
            .buttonStyle(.plain)
        }
    }
    
    private struct StatusSectionHeader: View {
        
        var message: String = "Use Status to share photos, text and videos that disappear in 24 hours."
    
        var body: some View {
            HStack(alignment: .top) {
                Image(systemName: "circle.dashed")
                    .imageScale(.large)
                
                (
                    Text(message)
                        .font(.subheadline)
                        .foregroundStyle(.accent)
                    +
                    Text(" ")
                    +
                    Text("Status Privacy")
                        .font(.headline)
                       
                )
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(.gray)
                        .imageScale(.small)
                }
                .buttonStyle(.plain)
            }
            .padding()
            .background(.whatsAppWhite)
            .clipShape(.rect(cornerRadius: 8))
            .foregroundStyle(.blue)
            
        }
    }
    
    private struct StatusSection<Content:View>: View {
        
        var image: String? = nil
        var title: String = "My Status"
        var subtitle: String = "Add to my status"
        var withPlus: Bool = false
        @ViewBuilder var content: Content
        var body: some View {
            HStack {
                Circle()
                    .frame(width: UpdatesScreen.Constants.imageSize)
                    .overlay(alignment: .bottomTrailing) {
                        if withPlus {
                            Button {
                                
                            } label: {
                                Image(systemName: "plus.circle.fill")
                                    .foregroundStyle(.whatsAppWhite, .blue)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.callout).bold()
                    
                    Text(subtitle)
                        .foregroundStyle(.gray)
                        .font(.footnote)
                }
                content
            }
        }
    }
    
    @ToolbarContentBuilder
    private var trailingNavItem: some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button {
                
            } label: {
                Image(systemName: "ellipsis.circle")
            }
        }
    }
    
    private enum Constants {
        static let imageSize: CGFloat = 55
    }
    
    private struct ChannelsListView: View {
        var body: some View {
            VStack(alignment: .leading) {
              
                VStack(alignment: .leading) {
                    // subtitle
                    Text("Stay updated on topics that matter to you. Find channels to follow below.")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                    
                    // list of channel cards
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(0..<6) { channel in
                                
                                ChannelCardView()
                            }
                        }
                    }
                    .scrollIndicators(.hidden)
                    // explore button
                    
                    Button {
                        
                    } label: {
                        Text("Explore more")
                            .foregroundStyle(.whatsAppWhite)
                            .bold()
                            .padding(.vertical,8)
                            .padding(.horizontal,12)
                            .background(.blue)
                            .clipShape(Capsule())
                    }
                    .buttonStyle(.plain)
                    .padding(.vertical)
                }
            }
        }
    }
    
    private func TitleSection(title: String = "Channels",withPlus: Bool = false) -> some View {
        HStack {
            // titel & plus button
            Text(title)
                .font(.title3).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            if withPlus {
                Button {
                    
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.title2)
                        .foregroundStyle(.primary,Color(.systemGray5))
                }
            }
        }
    }
    
    private struct ChannelCardView: View {
        var body: some View {
            VStack {
                Circle()
                    .frame(width: UpdatesScreen.Constants.imageSize)
                
                Text("FC Bayern Munich")
                    .font(.subheadline).bold()
                Button {
                    
                } label: {
                    Text("Follow")
                        .font(.headline)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical,6)
                        .background(.blue.quinary)
                        .clipShape(Capsule())
                        
                }
                .buttonStyle(.plain)
            }
            .padding()
            .background(.whatsAppWhite)
            .clipShape(.rect(cornerRadius: 10))
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 0.2)
            }
        }
    }
}
