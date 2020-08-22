//
//  AuthScreenView.swift
//  SwiftUI_Chats
//
//  Created by Павел Мишагин on 25.05.2020.
//  Copyright © 2020 Павел Мишагин. All rights reserved.
//

import SwiftUI

struct AuthScreenView: View {
  var body: some View {
    
    ZStack {
      Color("Theme1Background")
        .edgesIgnoringSafeArea(.all)
      
      VStack(alignment: .center, spacing: 80) {
        Image("Logo")
        
        VStack(alignment: .center, spacing: 30) {
          

          VStack(alignment: .leading, spacing: 10) {
            
            Text("Get started with").font(.subheadline)
            
            Button(action: {print("Google")}) {Text("Google")}
              .buttonStyle(LargeButtonStyle(titleColor: .black, isShadow: true))
              .overlay(Image("googleLogo").padding(), alignment: .leading)
          }
          
          VStack(alignment: .leading, spacing: 10) {
            
            Text("Or Sign Up With").font(.subheadline)
            
            Button(action: {print("Email")}) {Text("Email")}
              
              .buttonStyle(LargeButtonStyle(
                backGroundColor: Color("BlackButton"),
                titleColor: .white,
                isShadow: false))
            .cornerRadius(8)
          }
          
          VStack(alignment: .leading, spacing: 10) {
            
            Text("Already Onboard?").font(.subheadline)
            
            Button(action: {print("Login")}) {
              Text("Login")
            }
            .buttonStyle(LargeButtonStyle(titleColor:Color("RedButton") , isShadow: true))
          }
        }.padding(.horizontal,40)
      }
      
      
    }
    
    
  }
}

struct AuthScreenView_Previews: PreviewProvider {
  static var previews: some View {
    AuthScreenView()
  }
}


