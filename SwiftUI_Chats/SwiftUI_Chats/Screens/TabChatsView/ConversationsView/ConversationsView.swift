//
//  ConversationsView.swift
//  SwiftUI_Chats
//
//  Created by Павел Мишагин on 30.05.2020.
//  Copyright © 2020 Павел Мишагин. All rights reserved.
//

import SwiftUI

// 1. Horizontal Scroll Waiting Chats
// 2. List Active Chats


//struct ActiveChatsModel: Identifiable {
//  var id: String = UUID().uuidString
//  
//  var name        : String
//  var lastMessage : String
//  var imageName   : String
//  
//}



struct ConversationsView:  View {
  
  private var resignedKeyboard :Bool {
    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
  }
  
  @State var searchText  = ""
  @State var isSearching :Bool = false
  
  
  @State private var details: DetailInfo? = nil
  
  var someDetails = DetailInfo(name: "Some")
  
  var body : some View {
    
    
    ZStack {
      Color(#colorLiteral(red: 0.840216279, green: 0.8793696761, blue: 0.9047268033, alpha: 1)).edgesIgnoringSafeArea(.all)

      VStack(alignment: .leading, spacing: 10) {
        
          ConversationNavBar(title: "Alex Molenkov") {
            print("Log Out")
          }
        
        SearchBarSwiftUI(
          text        : $searchText,
          placeHolder : "Search",
          isEditing   : $isSearching)
          .accentColor(.blue)
          
        // Я незнаю почему но только так удается добавить и лист и scroll View

        WaitingChatsScrollView(details: $details)


      }// Vstack
        .padding()
        .onTapGesture {
        self.isSearching = false
        _ = self.resignedKeyboard
      }
    .navigationBarHidden(true)
    
    } // ZStack
      .sheet(item: $details) {details in
        DetailView(details: details)
    }
  } // Body
  
}

struct DetailView: View {
  var details : DetailInfo
  var body: some View {
    Text(details.name)
  }
}

struct DetailInfo: Identifiable {
    var id = UUID() // Conform to Identifiable
    let name: String
}

struct ProfileDetail:View {
  var body: some View {
    
    ZStack {
      Color(#colorLiteral(red: 0.840216279, green: 0.8793696761, blue: 0.9047268033, alpha: 1)).edgesIgnoringSafeArea(.all)
      
      VStack {
        Text("Profile")
      }.navigationBarTitle("Profile")
    }
    
    
    
  }
}

struct ConversationsView_Previews: PreviewProvider {
  static var previews: some View {
    ConversationsView(isSearching:false)
  }
}
