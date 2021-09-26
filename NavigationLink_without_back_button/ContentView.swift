//
//  ContentView.swift
//  Test
//
//  Created by khawlah khalid on 29/01/1443 AH.
//

import SwiftUI


struct Page2 : View{
    
    
    @Environment(\.presentationMode) var mode : Binding<PresentationMode>

    var body: some View{
        
        
        Button(action: {
            
            
            mode.wrappedValue.dismiss()
        }
               , label: {
            Text("Back")
        })
        
    }
}

struct Page1: View {
    
    var body: some View {
        
        NavigationView{
            
            
            NavigationLink(
                destination: Page2().navigationBarBackButtonHidden(true),
                label: {
                    Text("Next")
                })
   
        }
    }
}

struct Page1_Previews: PreviewProvider {
    static var previews: some View {
        Page1()
    }
}
