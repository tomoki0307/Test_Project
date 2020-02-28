//
//  ContentView.swift
//  Test_Project
//
//  Created by 筒井知生 on 2020/01/14.
//  Copyright © 2020 筒井知生. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var show_modal: Bool = false
    @State private var MenuIndex = 0
    @State private var selected = 0
    @State private var show_profile_nav: Bool = false
    var menu = ["sample1","sample2","sample3"]
    var test = "test1"
    var body: some View {
        NavigationView{
            VStack {
                VStack(alignment: .leading) {
                    //                    Text("Map")
                    //                        .font(.title)
                    //                        .padding(.horizontal, 10)
                    Button(action: {
                        self.show_modal = true
                    }) {
                        HStack{
                            Text("Menu:")
                            Spacer()
                            Text("\(menu[selected])")
                            Image(systemName:"arrowtriangle.down.fill")
                        }
                    }.padding(.horizontal, 15.0).sheet(isPresented: self.$show_modal) {
                        MenuModalView(select: self.$selected)
                    }
                    
                    
                }.frame(height:40)
                MapView(show_profile_nav: self.$show_profile_nav)
                if show_profile_nav {
                    
                    NavigationLink(destination: Profile()) {
                        HStack{
                            Text("Bunta(??)")
                            Spacer()
                            Text("Profile")
                            Image(systemName:"play")
                        }
                        .padding(.horizontal,20)
                    }
                }
            }
            .navigationBarTitle(Text("MAP"),displayMode:.inline)
            //            .navigationBarHidden(true)
            
        }
        
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
