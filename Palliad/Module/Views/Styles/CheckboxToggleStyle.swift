//
//  CheckboxToggleStyle.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 11/2/25.
//

import SwiftUI

struct CheckboxToggleStyle: ToggleStyle {
  func makeBody(configuration: Self.Configuration) -> some View {
      HStack {
     
      Image(systemName: configuration.isOn ? "checkmark.square" : "square")
        .resizable()
        .frame(width: 16, height: 16)
        .onTapGesture { configuration.isOn.toggle()}
      configuration.label
    
    }
  }
}
