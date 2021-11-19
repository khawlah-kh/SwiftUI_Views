//
//  HorizontalScrollView.swift
//  Test
//
//  Created by khawlah khalid on 19/11/2021.
//

import SwiftUI

struct HorizontalScrollView: View {
    
    let colors : [Color] = [.red,.blue,.yellow,.black,.pink,.orange,.gray]
    @State var selectedColor: Color?
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                ForEach(colors,id:\.self){ color  in
                    color
                        .frame(width: 100, height: 100)
                        .padding()
                        .onTapGesture {
                            withAnimation {
                                self.selectedColor = color
                            }
                           
                        }
                        .scaleEffect(self.selectedColor == color ? 1.5 :1.0)
                }
  
            }
            .frame( height: 250)
            .padding()
        }
    }
}

struct HorizontalScrollView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScrollView()
    }
}
