//
//  Demo.swift
//  Twitter
//
//  Created by khawlah khalid on 21/09/2021.
//

import SwiftUI

struct Demo: View {
    var body: some View {
        
        ScrollView{
        VStack{
            
            ForEach(MockData.Messages){message in
                ChatBubbleView(message: message)
            }
            
        }
        }.padding(.top)
    }
}

struct Demo_Previews: PreviewProvider {
    static var previews: some View {
        Demo()
    }
}
