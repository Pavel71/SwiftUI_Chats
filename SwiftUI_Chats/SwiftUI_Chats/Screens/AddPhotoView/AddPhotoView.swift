//
//  AddPhotoView.swift
//  SwiftUI_Chats
//
//  Created by Павел Мишагин on 27.05.2020.
//  Copyright © 2020 Павел Мишагин. All rights reserved.
//

import SwiftUI

struct AddPhotoView: View {
  
  @State var fullName : String = ""
  @State var aboutMe  : String = ""
  @State var sex      : Int    = 0
  
  var body: some View {
    
    ZStack {
      Color("Theme1Background")
        .edgesIgnoringSafeArea(.all)
      
      VStack(alignment: .center, spacing: 40) {
        
        Text("Set up profile").font(.largeTitle) // Title
        
        HStack(spacing: 30) {
          
          Image("avatar")
          .renderingMode(.template)
          .scaleEffect(0.7, anchor: .center)
          .background(Circle().stroke(lineWidth: 1).padding(-20))
          .foregroundColor(.black)
        
        Button(action: {}) {

            Image("plus")
              .renderingMode(.template)
              .resizable()
              .frame(width:30,height: 30, alignment: .center)
              .accentColor(.secondary)
              .scaledToFit()
          }
          
        } // HStack Image
        
        VStack(spacing:10) {
          
          VStack(alignment: .leading) {
            Text("Full Name").foregroundColor(.secondary)
            TextField("", text: $fullName)
              .keyboardType(.emailAddress)
          }
          
          Divider()
          
          VStack(alignment: .leading) {
            Text("About Me").foregroundColor(.secondary)
            SecureField("", text: $aboutMe)
              .keyboardType(.default)
          }
          
          Divider()
          
          VStack(alignment: .leading) {
            Text("Sex").foregroundColor(.secondary)
            
            Picker("", selection: $sex) {
              Text("Male").tag(0)
              Text("Female").tag(1)
            }
              
            .pickerStyle(SegmentedPickerStyle())
            
          }
          
        } // Center VStack
        
        VStack(spacing: 30) {
          
          Button(action: {}) {
            Text("Go to Chats")
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

        }.padding(.vertical,20) // Go to Chats
        
        
      }.padding(.horizontal,40) // Generall VStack
      
      
    }// Zstack
  }
}

struct AddPhotoView_Previews: PreviewProvider {
  static var previews: some View {
    AddPhotoView()
  }
}
