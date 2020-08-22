//
//  Button_Styles.swift
//  SwiftUI_Chats
//
//  Created by Павел Мишагин on 25.05.2020.
//  Copyright © 2020 Павел Мишагин. All rights reserved.
//

import SwiftUI


struct LargeButtonStyle: ButtonStyle {
  
  
  var backGroundColor: Color = Color("Theme1Background")
  var titleColor: Color
  var isShadow : Bool = false
  
  
    func makeBody(configuration: Self.Configuration) -> some View {

        configuration.label
            // Make the text flash when pressed
//          .frame(width: 250, height: 40, alignment: .center)
          .frame(height: 30)
          .frame(maxWidth: .infinity)
          .font(.headline)
            .opacity(configuration.isPressed ? 0.2 : 1)
            .padding()
          .foregroundColor(self.titleColor)
          .if(self.isShadow, transform: {
            $0.background(
              RoundedRectangle(cornerRadius: 12)
                .fill(backGroundColor)
                .shadow(color: Color("Theme1Highlight"), radius: 4, x: -4, y: -4)
                .shadow(radius: 4, x: 4, y: 4)
             )
          })
      .background(backGroundColor)
      
    }
}
