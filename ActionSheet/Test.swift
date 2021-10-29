
import SwiftUI

struct ActionSheetTest: View {
   
    
    @State var boolean = false
    var body: some View {

        Button {
            boolean.toggle()
        } label: {
            Text("Button")
        }
        
        
        .actionSheet(isPresented: $boolean) {
            ActionSheet(title: Text("Title"),
                        buttons: [
                            .default(Text("Edit")),
                            .destructive(Text("Delete"), action: {}),
                            .cancel()
                        ])
        }

    }
}
