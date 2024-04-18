//
//  ContentView.swift
//  ChatInterface
//
//  Created by Pushpank Kumar on 18/04/24.
//

import SwiftUI

struct ChatView: View {
  @Bindable private var viewModel: ChatViewModel = ChatViewModel()

  var body: some View {
    NavigationStack {
      VStack {
        ChatMessagesList(viewModel: viewModel)
        HStack {
          MessageTextField(draftMessage: $viewModel.draftMessage)
          SendMessageButton {
            viewModel.sendMessage()
          }.disabled(!viewModel.canSendMessage)
        }
        .padding(8)
      }
      .navigationTitle("Chat")
    }
  }
}

#Preview{
  ChatView()
}
