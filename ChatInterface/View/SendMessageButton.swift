//
//  SendMessageButton.swift
//  ChatInterface
//
//  Created by Pushpank Kumar on 18/04/24.
//

import SwiftUI

struct SendMessageButton: View {
  let action: () -> Void
  var body: some View {
    Button(action: action) {
      Image(systemName: "paperplane.circle.fill")
        .font(.title)
    }
  }
}

#Preview{
  SendMessageButton {
    print("hi")
  }
}
