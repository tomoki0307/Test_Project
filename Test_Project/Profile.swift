//
//  SwiftUIView.swift
//  Test_Project
//
//  Created by 筒井知生 on 2020/01/25.
//  Copyright © 2020 筒井知生. All rights reserved.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationView{
            VStack{
                Image("Sumbnail")
                    .resizable()
                    .frame(width:155,height:155)
                    .clipShape(Circle())
                    .padding(20)
                HStack{
                    Spacer()
                    Image(systemName:"star.fill")
                    Image(systemName:"star.fill")
                    Image(systemName:"star.fill")
                    Image(systemName:"star")
                    Image(systemName:"star")
                }
                .padding(.horizontal, 20.0)
                Text("BUNTA(??)")
                Divider()
                Text("「ワンコイン」スタイリング、デート前にいかがですか?")
                    .font(.footnote)
                    .padding()
                HStack{
                    Image("Hairstyle1")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                    Image("Hairstyle2")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                }
                .padding(.horizontal,20.0)
                HStack{
                    Image("Hairstyle3")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                    Image("Hairstyle4")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                }
                .padding(.horizontal,20.0)
                
                HStack{
                    Text("500円")
                        .frame(width: 80.0, height: 30.0)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 1)
                    )
                        .foregroundColor(.black)
                    Spacer()
                }
                .padding(20)
                NavigationLink(destination: MapView()) {
                    Text("コテ巻きスタイリング")
                }
                .frame(width:350,height:50)
                .background(Color.white)
                .cornerRadius(10)
                .padding(10)
            }.background(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
        
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
