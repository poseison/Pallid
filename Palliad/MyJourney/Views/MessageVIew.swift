//
//  MessageVIew.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 12/2/25.
//

import SwiftUI

struct MessageView: View {
    var currentMessage: Message

    var body: some View {
        HStack(alignment: .bottom, spacing: 10) {
            if !currentMessage.isCurrentUser {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40, alignment: .center)
                    .cornerRadius(20)
            } else {
                Spacer()
            }
            MessageCell(
                contentMessage: currentMessage.content,
                isCurrentUser: currentMessage.isCurrentUser)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

#Preview {
    MessageView(
        currentMessage: Message(content: "Hello guys", isCurrentUser: true))
}
