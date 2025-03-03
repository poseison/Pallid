//
//  BlueButton.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 8/2/25.
//

import SwiftUI

struct BlueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame (width: 250, height: 50)
            .background(.blue)
            .foregroundColor(.white)
            .buttonStyle(.plain)
            .cornerRadius(10)
        
    }
    
    
    
}
