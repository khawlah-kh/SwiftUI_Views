

import SwiftUI
struct ContentView: View {

  @State private var text: String = ""
  var characterLimit = 5
  var body: some View {
    TextField("Enter ...", text: $text)
          .padding()
          .keyboardType(.numberPad)
      .onReceive(text.publisher.collect()) {
        let s = String($0.prefix(characterLimit))
        if text != s {
          text = s
        }
      }
  }
}








