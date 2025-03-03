//
//  ChatView.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 12/2/25.
//

import Combine
import SwiftUI

struct ChatView: View {

    @State var messages = DataSource.messages4
    @State var newMessage: String = ""

    var body: some View {
        VStack {
            ScrollViewReader { proxy in
                ScrollView {
                    LazyVStack {
                        ForEach(messages, id: \.self) { message in
                            MessageView(currentMessage: message)
                                .id(message)
                        }
                    }
                    .onReceive(Just(messages)) { _ in
                        withAnimation {
                            proxy.scrollTo(messages.last, anchor: .bottom)
                        }

                    }.onAppear {
                        withAnimation {
                            proxy.scrollTo(messages.last, anchor: .bottom)
                        }
                    }
                }

                // send new message
                HStack {
                    TextField("Send a message", text: $newMessage)
                        .textFieldStyle(.roundedBorder)
                    Button(action: sendMessage) {
                        Image(systemName: "paperplane")
                    }
                }
                .padding()
            }
        }

    }

    func sendMessage() {

        if !newMessage.isEmpty {
            messages.append(Message(content: newMessage, isCurrentUser: true))
            messages.append(
                Message(content: "Reply of " + newMessage, isCurrentUser: false)
            )
            newMessage = ""
        }
    }
}
#Preview {
    ChatView()
}
