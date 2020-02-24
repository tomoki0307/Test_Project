//
//  ChatController.swift
//  Test_Project
//
//  Created by 筒井知生 on 2020/02/24.
//  Copyright © 2020 筒井知生. All rights reserved.
//

import Combine
import SwiftUI

// ChatController needs to be a ObservableObject in order
// to be accessible by SwiftUI
class ChatController : ObservableObject {
    // didChange will let the SwiftUI know that some changes have happened in this object
    // and we need to rebuild all the views related to that object
    var didChange = PassthroughSubject<Void, Never>()
    
    // We've relocated the messages from the main SwiftUI View. Now, if you wish, you can handle the networking part here and populate this array with any data from your database. If you do so, please share your code and let's build the first global open-source chat app in SwiftUI together
    @Published var messages = [
        ChatMessage(message: "こんにちは、ありがとうございます。", avatar: "美容師A", color: .red),
        ChatMessage(message: "メニューを確定致します。", avatar: "美容師A", color: .red),
        ChatMessage(message: "気をつけてお越しください。迷ったりお困りごとの場合は店舗情報からお電話ください。", avatar: "美容師A", color: .red)
    ]
    @Published var messages2 = [
        ChatMessage(message: "マップ上に店舗情報がございます。お困りの場合は店舗までお電話ください。", avatar: "美容師A", color: .red)
    ]
    // this function will be accessible from SwiftUI main view
    // here you can add the necessary code to send your messages not only to the SwiftUI view, but also to the database so that other users of the app would be able to see it
    func sendMessage(_ chatMessage: ChatMessage) {
        // here we populate the messages array
        messages.append(chatMessage)
        // here we let the SwiftUI know that we need to rebuild the views
        didChange.send(())
    }

}

