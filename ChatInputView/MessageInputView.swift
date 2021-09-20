//
//  MessageInputView.swift
//  Twitter
//
//  Created by khawlah khalid on 20/09/2021.
//

import SwiftUI

struct MessageInputView: View {
    
    @Binding var message :String
    var body: some View {

        HStack{
            TextField("Message... ", text: $message)
                .textFieldStyle(PlainTextFieldStyle())
                .frame(minHeight: 60)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Send")
            })
           
            
            
        }
        .padding(.horizontal)


    }
}

struct MessageInputView_Previews: PreviewProvider {
    static var previews: some View {
        MessageInputView(message: .constant("Message..."))
    }
}
