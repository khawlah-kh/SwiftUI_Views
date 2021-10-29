
import SwiftUI

struct LightDarkMode: View {

    var body: some View {
        Button {
          
        } label: {
            Text("Button")
                .font(.system(size: 24, weight: .semibold))
                .padding()
                .foregroundColor(Color(.systemBackground))
                .background(Color(.label))
                .cornerRadius(10)
        }
    }
}
