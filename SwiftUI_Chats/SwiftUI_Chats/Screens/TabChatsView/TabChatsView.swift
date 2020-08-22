//
//  TabChatsView.swift
//  SwiftUI_Chats
//
//  Created by Павел Мишагин on 30.05.2020.
//  Copyright © 2020 Павел Мишагин. All rights reserved.
//

import SwiftUI

enum Tab {
  case chats, conversations
}

struct TabChatsView: View {
  
  var resignedKeyboard :Bool {
    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
  }
  
  init() {
    UITabBar.appearance().barTintColor = #colorLiteral(red: 0.840216279, green: 0.8793696761, blue: 0.9047268033, alpha: 1)
    
    
    // Get away divider Nav bar
//    
//    UINavigationBar.appearance().isTranslucent = false
//    UINavigationBar.appearance().barStyle = .black
//    
//    UINavigationBar.appearance().barTintColor = #colorLiteral(red: 0.840216279, green: 0.8793696761, blue: 0.9047268033, alpha: 1)

    
        //Use this if NavigationBarTitle is with displayMode = .inline
//        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.black]
//        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.red]
    
//    .navigationBarTitle("Conversation",displayMode: .inline)
//    .navigationBarItems(trailing:
//             Button(action: {}) {
//             Text("Log out").foregroundColor(.blue)
//             })
    

    
  }
  var name : String = "Alex"
  
  @State var searchText: String = ""
  
  
  var body: some View {
    
    TabView {

      
      NavigationView {
        ChatsView()
          .hiddenNavigationBarStyle()


      }.tabItem {
        Text("Persons")
        Image(systemName: "person.2")
      }.tag(Tab.chats)
    
      NavigationView {
        ConversationsView()
        .hiddenNavigationBarStyle()
        }
      .tabItem {
        Text("Conversation")
        Image(systemName: "bubble.left.and.bubble.right")
      }.tag(Tab.conversations)
      
      
      
      
      // Tab 2
      
    }// TabView
      
      //                  .edgesIgnoringSafeArea(.bottom)
      .accentColor(.purple)
    
    //    }// Nav View
    
  }//Body
}

struct TabChatsView_Previews: PreviewProvider {
  static var previews: some View {
    TabChatsView()
  }
}



