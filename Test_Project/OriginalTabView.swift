//
//  TabView.swift
//  Test_Project
//
//  Created by 筒井知生 on 2020/01/16.
//  Copyright © 2020 筒井知生. All rights reserved.
//

import SwiftUI

struct OriginalTabView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                }
            Profile()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
            ChatView()
                .environmentObject(ChatController())
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
        }
        .font(.headline)
    }
}

struct OriginalTabView_Previews: PreviewProvider {
    static var previews: some View {
        OriginalTabView()
    }
}
