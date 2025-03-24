//
//  CommunitiesScreen.swift
//  WhatsApp-clone
//
//  Created by ali on 24/03/2025.
//

import SwiftUI

struct CommunitiesScreen: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    PlacehoderImageView
                    PlaceholderTextSectionView
                    SeeExampleCommunitiesButton
                    NewCommunityAddButton
                }
                .padding()
            }.scrollIndicators(.hidden)
                .navigationTitle("Communities")
        }
    }
}

#Preview {
    CommunitiesScreen()
}

extension CommunitiesScreen {
    
    private var PlacehoderImageView: some View {
        Image(.communities)
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity)
            .frame(height: 200)
            .padding(.top)
    }
    
    private var PlaceholderTextSectionView: some View {
        VStack(alignment:.leading, spacing: 16) {
            Text("Stay connected with a community")
                .font(.headline)
            
            Text("Communities bring members together in topic-based groups. Any community you're added to will appear here.")
                .font(.subheadline)
                .foregroundStyle(.gray)
        }
    }
    
    private var SeeExampleCommunitiesButton: some View {
        Button("See exmaple communities>") {
            
        }
        .font(.headline)
    }
    
    private var NewCommunityAddButton: some View {
        Button {
            
        } label: {
            Label("New Community", systemImage: "plus")
                .font(.subheadline).bold()
                .foregroundStyle(.whatsAppWhite)
                .frame(maxWidth: .infinity)
                .padding(.vertical,10)
                .background(.blue)
                .clipShape(.rect(cornerRadius: 14))
                .padding(.horizontal)
                .padding(.top,10)
                
        }
    }
}
