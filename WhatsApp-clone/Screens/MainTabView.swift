//
//  MainTabView.swift
//  WhatsApp-clone
//
//  Created by ali on 19/03/2025.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedTab: Tab = .updates
    
    var body: some View {
        TabView {
           UpdatesScreen()
                .tabItem {
                    Tab.updates.tabContents
                }
            
            CallsScreen()
                .tabItem {
                    Tab.calls.tabContents
                }
            
            CommunitiesScreen()
                .tabItem {
                    Tab.communities.tabContents
                }
            
           ChatsScreen()
                .tabItem {
                    Tab.chats.tabContents
                }
            
            Text(Tab.settings.title)
                .tabItem {
                    Tab.settings.tabContents
                }
        }
    }
}

#Preview {
    MainTabView()
}

extension MainTabView {
    
    private enum Tab: String {
        case updates, calls, communities, chats, settings
        
        fileprivate var title: String {
            return rawValue.capitalized
        }
        
        @ViewBuilder
        fileprivate var tabContents: some View {
            switch self {
            case .updates:
                Image(systemName: "circle.dashed.inset.filled")
                Text(title)
            case .calls:
                Image(systemName: "phone")
                Text(title)
            case .communities:
                Image(systemName: "person.3")
                Text(title)
            case .chats:
                Image(systemName: "message")
                Text(title)
            case .settings:
                Image(systemName: "gear")
                Text(title)
            }
        }
    }
}
