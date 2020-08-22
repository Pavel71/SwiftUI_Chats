//
//  ActiveChatsList.swift
//  SwiftUI_Chats
//
//  Created by Павел Мишагин on 01.06.2020.
//  Copyright © 2020 Павел Мишагин. All rights reserved.
//

import SwiftUI

struct ActiveChatsModel: Hashable {
  
  var id: String = UUID().uuidString
  
  var name        : String
  var lastMessage : String
  var imageName   : String
  
}

struct ActiveChatsList: View {
  
  @State var activeChatsData:[ActiveChatsModel]  =  [
     ActiveChatsModel(name: "Alice", lastMessage: "Hi How are you?", imageName: "human6"),
     ActiveChatsModel(name: "Bob", lastMessage: "You are dick", imageName: "human1"),
     ActiveChatsModel(name: "Rose", lastMessage: "Nice!", imageName: "human8")
   ]
  
  @Binding var details : DetailInfo?
  
  init(details: Binding<DetailInfo?>) {
    self._details = details
    UITableView.appearance().backgroundColor = #colorLiteral(red: 0.840216279, green: 0.8793696761, blue: 0.9047268033, alpha: 1)
    UITableView.appearance().tableFooterView = UIView()
    UITableView.appearance().separatorStyle = .none
    
    
  }
  
  
  
  
  var body: some View {
    
    
    GeometryReader { gr in
      List {
        
        Section(header:
          HStack {
            Text("Active Chats").foregroundColor(.secondary)
            Spacer()
            }.frame(height: 5)
          
          
          .frame(width: gr.size.width)
          .padding()
            
          .background(Color(#colorLiteral(red: 0.840216279, green: 0.8793696761, blue: 0.9047268033, alpha: 1)))
          ){
            ForEach(self.activeChatsData, id: \.self) { chats in
              
         
                ActiveChatCell(activaChatData: chats)
                  .listRowInsets(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                  .cornerRadius(12)
                  .onTapGesture {
                    self.details = DetailInfo(name: chats.name)
              }
              
              
              
//              ActiveChatCell(activaChatData: chats)
//                .listRowInsets(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
//              .cornerRadius(12)

          }
          
        }
         .listRowBackground(Color(#colorLiteral(red: 0.840216279, green: 0.8793696761, blue: 0.9047268033, alpha: 1)))
      }// List
      
     
      
    } // Geometry Reader


  } // Body
}

struct ActiveChatsCell: View {
  
  var model : ActiveChatsModel
  
  
  var body: some View {
    
    HStack {
      Image(model.imageName)
        .renderingMode(.original)
        .resizable()
        .frame(width: 50, height: 50)
      
      VStack {
        Text(model.name)
        Text(model.lastMessage)
      }
    }
  }
}




struct ActiveChatCell: View {
  
  var activaChatData: ActiveChatsModel
  
  var body: some View {
    
    ZStack {
      Color.white.edgesIgnoringSafeArea(.all)
      
      HStack {
          Image(activaChatData.imageName)
            .resizable()
            .frame(width: 100,height: 100)
        
          .cornerRadius(10)
        
        VStack(alignment: .leading, spacing: 5){
          Text(activaChatData.name).font(.headline)
          Text(activaChatData.lastMessage)
            .font(.subheadline)
            .multilineTextAlignment(.center)
        }
            
          
            
          Spacer()
          Rectangle()
            .foregroundColor(Color(#colorLiteral(red: 0.6257837415, green: 0.6675404906, blue: 0.9297069907, alpha: 1)))
            .frame(width: 10)
          } // HStack
      
      
        
    }
    
    
    
  }
}


//struct ActiveChatsList_Previews: PreviewProvider {
//  static var previews: some View {
//    ActiveChatsList(details: : DetailInfo(name:""))
//  }
//}
