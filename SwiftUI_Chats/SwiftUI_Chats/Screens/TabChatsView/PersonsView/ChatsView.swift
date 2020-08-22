//
//  ChatsView.swift
//  SwiftUI_Chats
//
//  Created by Павел Мишагин on 30.05.2020.
//  Copyright © 2020 Павел Мишагин. All rights reserved.
//

import SwiftUI
import WaterfallGrid

// MARK: Model
struct PeopleChats: Hashable {
  
  var name: String
  var imageName: String
}

// MARK: View
struct ChatsView:  View {
  
  private var resignedKeyboard :Bool {
    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
  }
  
  var peoples :[PeopleChats] = [
    PeopleChats(name: "Kayel", imageName: "human2"),
    PeopleChats(name: "Sabrina", imageName: "human5"),
    PeopleChats(name: "Natasha", imageName: "human7"),
    PeopleChats(name: "Pasha", imageName: "human8"),
    PeopleChats(name: "Gulchitai", imageName: "human1")
  ]
  
  
  
  var title : String  {"\(peoples.count) people nearby"}
  @State var searchText : String = ""
  @State var isSearching  : Bool = false
  
  var body : some View {
    
    
    ZStack {
      Color(#colorLiteral(red: 0.840216279, green: 0.8793696761, blue: 0.9047268033, alpha: 1)).edgesIgnoringSafeArea(.all)
      
      GeometryReader { g in
        
        VStack(alignment: .leading, spacing: 5) {
          
          
          CustomNavBarPersonView(title: "Alex")
          SearchBarSwiftUI(text: self.$searchText, placeHolder: "Search", isEditing: self.$isSearching)
          Text(self.title).font(.largeTitle)
          
          
          WaterfallGrid(self.peoples, id: \.self) { (person)  in
            PersonCell(person: person)
              .frame(width: (g.size.width / 2 - 40),
                     height: (g.size.width / 2 - 20))
          }
          .gridStyle(
            columnsInPortrait: 2,
            columnsInLandscape: 3
          )
            .scrollOptions(
              direction: .vertical,
              showsIndicators: false)
          
        }.padding()// Vstack
          
          .onTapGesture {
            self.isSearching = false
            _ = self.resignedKeyboard
        }
      }// Geometry
      
      
      
    }// Zstack
    
    
    
  }// Body
  
}

// MARK: Person Cell
struct PersonCell: View {
  
  var person: PeopleChats
  
  var body: some View {
    
    VStack(spacing: 1) {
      Image(self.person.imageName)
        .resizable()
        .cornerRadius(5)
      
      HStack {
        Text(self.person.name)
        Spacer()
      }
      .padding(.horizontal)
      .padding(.vertical,5)
        .background(Color.white)
        .foregroundColor(.secondary)
        .cornerRadius(5)
      
      
    }// Vstack
      .shadow(radius: 1, x: 3, y: 3)
    
    
  }
  
}

struct ChatsView_Previews: PreviewProvider {
  static var previews: some View {
    ChatsView()
  }
}
