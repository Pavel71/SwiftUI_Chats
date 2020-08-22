//
//  View+Extensions.swift
//  SwiftUI_Chats
//
//  Created by Павел Мишагин on 26.05.2020.
//  Copyright © 2020 Павел Мишагин. All rights reserved.
//

import SwiftUI


extension View {
  
  @ViewBuilder func `if`<T>(_ condition: Bool, transform: (Self) -> T) -> some View where T : View {
    if condition {
      transform(self)
    } else {
      self
    }
  }
  
  
  
}


