//
//  MessageBubble.swift
//  ChatInterface
//
//  Created by Pushpank Kumar on 18/04/24.
//

import SwiftUI

struct MessageBubble: View {
    
    let message: Message
    
    var body: some View {
        Text(message.text)
            .foregroundStyle(message.role.textColor)
            .padding(8)
            .background{
                UnevenRoundedRectangle(cornerRadii: message.role.cornerRadii)
                    .foregroundColor(message.role.bubbleColor)
            }
    }
}

#Preview {
    MessageBubble(message: Message(role: .sender, text: "Hey 👋"))
}
