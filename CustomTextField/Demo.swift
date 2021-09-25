//
//  Demo.swift
//  Test
//
//  Created by khawlah khalid on 25/09/2021.
//

import SwiftUI

struct Demo: View {
    @State var text : String = ""
    var body: some View {
        ZStack{
            
            Color(.systemIndigo)
                .ignoresSafeArea()
            
            
            CustomTextField(text: $text, placeholder: "Email", imageName: "envelope")
                .padding()
            
        }
       
        
    }
}

struct Demo_Previews: PreviewProvider {
    static var previews: some View {
        Demo()
    }
}
