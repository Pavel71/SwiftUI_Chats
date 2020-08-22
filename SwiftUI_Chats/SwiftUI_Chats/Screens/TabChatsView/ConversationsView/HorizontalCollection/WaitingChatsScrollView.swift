//
//  WaitingChatsScrollView.swift
//  SwiftUI_Chats
//
//  Created by Павел Мишагин on 01.06.2020.
//  Copyright © 2020 Павел Мишагин. All rights reserved.
//

import SwiftUI



struct WaitingChatsScrollView: View {
  
  @Binding var details : DetailInfo?
  
  let waitingChats = ["human1","human6","human2","human5","human7","human8"]
  
  let activeChats:[ActiveChatsModel] = [
    ActiveChatsModel(name: "Alice", lastMessage: "Hi How are you?", imageName: "human6"),
    ActiveChatsModel(name: "Bob", lastMessage: "You are dick", imageName: "human1"),
    ActiveChatsModel(name: "Rose", lastMessage: "Nice!", imageName: "human8")
  ]
  
  
  var body: some View {

    GeometryReader { g in
      
      VStack(alignment: .leading, spacing: 5) {
        
        Text("Waiting chats").foregroundColor(.secondary)
        ScrollView(.horizontal, showsIndicators: false) {
          HStack {
            ForEach(self.waitingChats, id: \.self) { person in
              Button(action: {}) {
                Image(person).renderingMode(.original)
                  .resizable()
                  .frame(width: g.size.width / 4, height: g.size.width / 4)
                  .cornerRadius(10)
                  .scaledToFit()
                
              }
            }
            
          }
        }// Horizontl ScrollView
        ActiveChatsList(details: self.$details)
        
      }// Vstack
      
    } // GReader
  }
}

//struct WaitingChatsScrollView_Previews: PreviewProvider {
//  static var previews: some View {
//    WaitingChatsScrollView(details: DetailInfo(name: ""))
//  }
//}
