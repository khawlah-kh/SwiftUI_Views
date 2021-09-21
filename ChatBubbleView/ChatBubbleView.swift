//
//  ChatBubbleView.swift
//  Twitter
//
//  Created by khawlah khalid on 21/09/2021.
//

import SwiftUI

struct ChatBubbleView: View {
    
    let message : Message
    var body: some View {
        HStack(alignment:.bottom){
            if message.isCurrentUser{
                Spacer()
            }
            else
            {
                Image(message.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
    
            }
            Text(message.message)
                .padding()
                .foregroundColor(message.isCurrentUser ? .white : .black)
                .background(message.isCurrentUser ? Color.blue : Color(.systemGray5))
                .clipShape(ChatBubble(isFromCurrentUser: message.isCurrentUser))
       
            
            if !message.isCurrentUser{
          
                Spacer()
            }
            
        }
        .padding(.horizontal)
    }
}

struct ChatBubbleView_Previews: PreviewProvider {
    static var previews: some View {
        ChatBubbleView(message:MockData.Messages[0])
    }
}
