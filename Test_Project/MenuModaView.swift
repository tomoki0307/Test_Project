//
//  MenuModal.swift
//  Test_Project
//
//  Created by 筒井知生 on 2020/01/16.
//  Copyright © 2020 筒井知生. All rights reserved.
//

import SwiftUI

struct MenuModalView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var select: Int
    var body: some View {
        VStack{
            List{
                Button(action:{
                    self.select = 0
                }){
                    HStack{
                        Text("sample1")
                        Spacer()
                        if self.select == 0 {
                            Image(systemName:"checkmark")
                        }
                    }
                }
               Button(action:{
                    self.select = 1
                }){
                   HStack{
                        Text("sample2")
                        Spacer()
                        if self.select == 1 {
                            Image(systemName:"checkmark")
                        }
                    }
                }
                Button(action:{
                    self.select = 2
                }){
                    HStack{
                        Text("sample3")
                        Spacer()
                        if self.select == 2 {
                            Image(systemName:"checkmark")
                        }
                    }
                }
            }
            HStack {
                
                Button(action: {
                    print("dismisses form")
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("close")
                }.padding(.bottom, 50)
            }
        }
    }
}


struct MenuModalView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewWrapper()
    }
    
    struct PreviewWrapper: View {
        @State(initialValue: 0) var select: Int
        
        var body: some View {
            MenuModalView(select: $select)
        }
    }
}
