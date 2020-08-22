//
//  CustomNavBarPersonView.swift
//  SwiftUI_Chats
//
//  Created by Павел Мишагин on 02.06.2020.
//  Copyright © 2020 Павел Мишагин. All rights reserved.
//

import SwiftUI

struct CustomNavBarPersonView: View {
  
  var title: String
  

    var body: some View {
      
      HStack(alignment: .center) {
        Spacer()
        Text(title)
        Spacer()
      } // HStack
    }
}

struct CustomNavBarPersonView_Previews: PreviewProvider {
    static var previews: some View {
      CustomNavBarPersonView(title: "SOme")
    }
}
