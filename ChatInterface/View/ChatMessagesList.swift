//
//  ChatMessagesList.swift
//  ChatInterface
//
//  Created by Pushpank Kumar on 18/04/24.
//

import SwiftUI

struct ChatMessagesList: View {
  @Bindable var viewModel: ChatViewModel

  var body: some View {
    ScrollView {
      ForEach(viewModel.messages) { message in
        MessageCell(message: message)
          .padding(message.role.padding)
      }
    }
    .scrollPosition(id: $viewModel.scrollPosition)
    .defaultScrollAnchor(.bottom)
  }
}
