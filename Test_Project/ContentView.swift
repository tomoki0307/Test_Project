//
//  ContentView.swift
//  Test_Project
//
//  Created by 筒井知生 on 2020/01/14.
//  Copyright © 2020 筒井知生. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selectorIndex = 0
    @State private var numbers = ["Map","Message"]
    
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Map")
                    .font(.title)
                HStack(alignment: .top) {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                }
                
                MapView()
                    .frame(height: 300)
            }
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
