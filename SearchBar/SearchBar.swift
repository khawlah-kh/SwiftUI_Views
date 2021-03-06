//
//  SearchBar.swift
//  Twitter
//
//  Created by khawlah khalid on 18/09/2021.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text : String
    var body: some View {
        HStack{
            
            TextField("Search ...", text: $text)
             
                .padding(8)
                .padding(.horizontal,24)
                .background(Color(.systemGray6))
                .cornerRadius(8)
            
                .overlay(Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                            .padding(.leading,8)

                )
  
        }
        .padding(.horizontal,10)
    }
}


struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
    }
}
