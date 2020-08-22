//
//  ContentView.swift
//  SwiftUI_Chats
//
//  Created by Павел Мишагин on 25.05.2020.
//  Copyright © 2020 Павел Мишагин. All rights reserved.
//

import SwiftUI

// 1. Tab bar Controller


// 2. Первый экран - В Топе хоризонтал View ниже List

// 3. Второй Экран 2 колонки с ячейками + Поиск



struct ContentView: View {
    var body: some View {
      Text("Some")
    }
}

struct WeekView: View {
    let heartRates: [Int] = [1,25,30,98,26,75]

    var body: some View {
        HStack {
            ForEach(self.heartRates, id: \.self) { hr in
                Text("190")
                    .hidden()
                    .padding(4)
                    .background(Color.purple)
                    .cornerRadius(4)
                    .overlay(Text(String(hr)))
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}


