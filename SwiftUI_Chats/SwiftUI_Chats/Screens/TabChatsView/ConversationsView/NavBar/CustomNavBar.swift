//
//  CustomNavBar.swift
//  SwiftUI_Chats
//
//  Created by Павел Мишагин on 01.06.2020.
//  Copyright © 2020 Павел Мишагин. All rights reserved.
//

// Написать Кастомный навбар и скрыть нативный

import SwiftUI

struct ConversationNavBar: View {
  
  var title: String
  var logOutAction: () -> Void

    var body: some View {
      HStack(alignment: .center) {
        Spacer()
        Text(title)
        Spacer()
        Button(action: logOutAction) {
          Text("Log out").foregroundColor(.blue)
        }
      } // HStack
    }
}

struct CustomNavBar_Previews: PreviewProvider {
    static var previews: some View {
      ConversationNavBar(title: "SOme", logOutAction: {print("LogOut")})
    }
}
