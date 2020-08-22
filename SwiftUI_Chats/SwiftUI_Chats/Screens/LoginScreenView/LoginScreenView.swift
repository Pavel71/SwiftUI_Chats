//
//  LoginScreenView.swift
//  SwiftUI_Chats
//
//  Created by Павел Мишагин on 27.05.2020.
//  Copyright © 2020 Павел Мишагин. All rights reserved.
//

import SwiftUI

struct LoginScreenView: View {
  
  @State var email        : String = ""
  @State var password     : String = ""
  
  var body: some View {
    ZStack {
      Color("Theme1Background")
        .edgesIgnoringSafeArea(.all)
      
      VStack(alignment: .center, spacing: 70) {
        
        Spacer()
        Text("Welcome back").font(.largeTitle)
        
        VStack(alignment: .leading, spacing: 5) {
          
          VStack(alignment: .leading, spacing: 20) {
            
            Text("Login with").font(.subheadline)
            
            Button(action: {print("Google")}) {Text("Google")}
              .buttonStyle(LargeButtonStyle(titleColor: .black, isShadow: true))
              .overlay(Image("googleLogo").padding(), alignment: .leading)
          }
          
          Text("or").foregroundColor(.secondary).padding(.vertical,30)
          
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
          Spacer()
          
          VStack(spacing: 10) {
            
            Button(action: {}) {
              Text("Login")
            }.buttonStyle(LargeButtonStyle(backGroundColor:Color("BlackButton") , titleColor: .white, isShadow: false))
              
              .cornerRadius(12)
            
            HStack(spacing: 10) {
              
              Text("Need an accound?").foregroundColor(.secondary)
              Button(action: {}) {
                Text("Sign Up")
                  .font(.body)
                  .foregroundColor(Color("RedButton"))
              }
              Spacer()
            }
            
            
            
          }.padding(.vertical,20)
          

        }.padding(.horizontal,40)
        
        Spacer()
        
      }// General Vstack
      
    }// Zstack
  }// Body
}

struct LoginScreenView_Previews: PreviewProvider {
  static var previews: some View {
    LoginScreenView()
  }
}
