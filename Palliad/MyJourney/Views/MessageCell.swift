//
//  MessageCell.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 12/2/25.
//

import SwiftUI

struct MessageCell: View {
    var contentMessage: String
    var isCurrentUser: Bool

    var body: some View {
        Text(contentMessage)
            .padding(10)
            .foregroundColor(isCurrentUser ? Color.white : Color.black)
            .background(isCurrentUser ? Color.blue : Color(UIColor.systemGray6))
            .cornerRadius(10)
    }
}
#Preview {
    MessageCell(
        contentMessage: "This is a single message cell.", isCurrentUser: false)
}
