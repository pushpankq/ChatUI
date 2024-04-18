//
//  MessageCell.swift
//  ChatInterface
//
//  Created by Pushpank Kumar on 18/04/24.
//

import SwiftUI

struct MessageCell: View {
  let message: Message

  var body: some View {
    HStack {
      if message.role == .sender { Spacer() }
      MessageBubble(message: message)
      if message.role == .receiver { Spacer() }
    }
  }
}

#Preview{
  MessageCell(message: Message(role: .sender, text: "Hey 👋"))
}
