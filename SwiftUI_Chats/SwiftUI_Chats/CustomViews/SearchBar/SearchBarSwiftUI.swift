//
//  SearchBarSwiftUI.swift
//  SwiftUI_Chats
//
//  Created by Павел Мишагин on 30.05.2020.
//  Copyright © 2020 Павел Мишагин. All rights reserved.
//




import SwiftUI
 
struct SearchBarSwiftUI: View {
  
    @Binding var text: String
  
    var placeHolder: String
 
  @Binding var isEditing: Bool
 
    var body: some View {
        HStack {
 
            TextField(placeHolder, text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray3))
                .cornerRadius(8)
              .overlay(
                  HStack {
                      Image(systemName: "magnifyingglass")
                          .foregroundColor(.gray)
                          .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                          .padding(.leading, 8)
               
                      if isEditing {
                          Button(action: {
                              self.text = ""
                          }) {
                              Image(systemName: "multiply.circle.fill")
                                  .foregroundColor(.gray)
                                  .padding(.trailing, 8)
                          }
                      }
                  }
              )
//                .padding(.horizontal, 10)
                .onTapGesture {
                    self.isEditing = true
                }
 
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
                  UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                }) {
                    Text("Cancel")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.default)
            }
        }
    }
}

struct ContentView_SearchBar: View {
  
    var body: some View {
      SearchBarSwiftUI(text: .constant(""), placeHolder: "Search...", isEditing: .constant(true))
    }
}

struct SearchBarSwiftUI_Previews: PreviewProvider {

    static var previews: some View {
      ContentView_SearchBar()
    }
}
