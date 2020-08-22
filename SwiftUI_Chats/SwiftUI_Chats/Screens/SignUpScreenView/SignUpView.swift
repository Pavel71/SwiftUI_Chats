//
//  SignUpView.swift
//  SwiftUI_Chats
//
//  Created by Павел Мишагин on 27.05.2020.
//  Copyright © 2020 Павел Мишагин. All rights reserved.
//

import SwiftUI

struct SignUpView: View {
  var userName            : String = "Sveik"
  
  @State var email        : String = ""
  @State var password     : String = ""
  @State var comfPassword : String = ""
  
  
  var body: some View {
    
    ZStack {
      Color("Theme1Background")
        .edgesIgnoringSafeArea(.all)
      
      VStack(alignment: .center, spacing: 50) {
        
        Spacer()
        
        Text("\(userName) " + "Hello!").font(.largeTitle)
        
        VStack(alignment: .leading, spacing: 10) {
          
          VStack(alignment: .leading) {
            Text("Email").foregroundColor(.secondary)
            TextField("", text: $email)
              .keyboardType(.emailAddress)
          }
          
          Divider()
          
          VStack(alignment: .leading) {
            Text("Password").foregroundColor(.secondary)
            SecureField("", text: $password)
              .keyboardType(.default)
          }
          
          Divider()
          VStack(alignment: .leading) {
            Text("Confirm password").foregroundColor(.secondary)
            SecureField("", text: $comfPassword)
              .keyboardType(.default)
          }
          
          Divider()
          
        }
        .padding(.horizontal,40)
        
        Button(action: {}) {
          Text("Sign Up")
        }.buttonStyle(LargeButtonStyle(backGroundColor:Color("BlackButton") , titleColor: .white, isShadow: false))
          
          .cornerRadius(12)
          .padding(.horizontal,40)
        
        Spacer()
        
        HStack(alignment: .firstTextBaseline, spacing: 10) {
          
          Text("Already onboard?").foregroundColor(.secondary)
          Button(action: {}) {
            Text("Login")
              .font(.body)
              .foregroundColor(Color("RedButton"))
          }
          Spacer()
        }.padding(40)
        
      }// Generaly Vstack
    }// Zstack
  }
}

struct SignUpView_Previews: PreviewProvider {
  static var previews: some View {
    SignUpView()
  }
}
