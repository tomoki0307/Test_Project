//
//  TabView.swift
//  Test_Project
//
//  Created by 筒井知生 on 2020/01/16.
//  Copyright © 2020 筒井知生. All rights reserved.
//

import SwiftUI

// https://developer.apple.com/documentation/swiftui/tabview
struct OriginalTabView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                }
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
        }
        .font(.headline)
    }
}

struct ContentView_20191120_Previews: PreviewProvider {
    static var previews: some View {
        OriginalTabView()
    }
}
