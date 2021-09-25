//
//  CustomTextField.swift
//  Test
//
//  Created by khawlah khalid on 25/09/2021.
//


import SwiftUI

struct CustomTextField: View {
    
    @Binding var text : String
    @State var placeholder : String
    let imageName : String
    var  textFieldPlaceholder : String {
        
        
        if text.isEmpty{
            return placeholder
            
        }
        return ""
        
    }

    var body: some View {
        ZStack(alignment:.leading){
            
            Text(textFieldPlaceholder)
                .foregroundColor(Color(.init(white: 1, alpha: 0.87)))
                .padding(.leading,53)
            HStack(spacing:16){
                
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                

            TextField("", text: $text)
}
                 .padding()
                . background(Color(.init(white:1,alpha:0.15)))
           
                 .cornerRadius(10)
                .foregroundColor(.white)
            
           
        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(text: .constant(""), placeholder: "Email", imageName: "envelope")
    }
}


