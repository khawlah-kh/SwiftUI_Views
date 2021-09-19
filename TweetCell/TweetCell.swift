//
//  TweetCell.swift
//  Twitter
//
//  Created by khawlah khalid on 17/09/2021.
//

import SwiftUI

struct TweetCell: View {
    var body: some View {
        VStack(alignment:.leading){
            HStack(alignment:.top,spacing:12){
                UserImage()
                
                
                VStack(alignment:.leading,spacing:4){
                    HStack {
                        Text("Khawlah Khalid")
                            .font(.system(size: 14, weight: .semibold))
                        
                        
                        Text("@KhawlahKh •")
                            .font(.caption)
                        
                        Text("2m")
                            .font(.caption)
                    }
                    Text("Be yourself; everyone else is already taken.")
                    
                    
                }
                
                
                
                
                
            }
            .padding(.bottom)
            .padding(.trailing)
            
            HStack{
                
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              
                    TweetAction(imageName: "bubble.left")

                            
                })
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              
                    TweetAction(imageName: "arrow.2.squarepath")

                            
                })
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              
                    TweetAction(imageName: "heart")

                            
                })
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              
                    TweetAction(imageName: "bookmark")

                            
                })
                
                
            }
            .foregroundColor(.gray)
            .padding(.horizontal)
         
         Divider()
        }
        .padding(.leading,5)
    }
}

struct TweetCell_Previews: PreviewProvider {
    static var previews: some View {
        TweetCell()
    }
}

struct UserImage: View {
    var body: some View {
        Image(systemName: "person.fill")
            .resizable()
            .scaledToFill()
            .clipped()
            .cornerRadius(28)
            .frame(width: 56, height: 56)
            .shadow(radius: 10)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            //.padding(.leading)
    }
}


struct TweetAction: View {
    var imageName:String
    var body: some View {
        Image(systemName: imageName)
            .font(.system(size: 16))
            .frame(width: 32, height: 32)
    }
}
