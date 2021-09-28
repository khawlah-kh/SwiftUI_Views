//
//  Content_View.swift
//  Test
//
//  Created by khawlah khalid on 28/09/2021.
//

import SwiftUI

struct Content_View: View {
    
    @State var isShowingImagePicker : Bool = false
    
    @State var selectedUIImage : UIImage?
    @State var image : Image?
    
    @Environment(\.presentationMode) var mode : Binding<PresentationMode>
    
    func loadImage(){
        guard let selectedImage=selectedUIImage else {
            return
        }
        
        image = Image(uiImage: selectedImage)
    }
    var body: some View{
        
        VStack{
            
            
            Button(action: {
                self.isShowingImagePicker.toggle()
            }, label: {
                
                ZStack{
                    if let image = image {
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 140, height: 140)
                            .padding(.top,20)
                            .padding(.bottom,16)
                            .clipShape(Circle())
                        
                    }
                    else{
                        Image("plus_photo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 140, height: 140)
                            .padding(.top,20)
                            .padding(.bottom,16)
                        
                    }
                }
            })
            .sheet(isPresented: $isShowingImagePicker, onDismiss: loadImage, content: {
                ImagePicker(image: $selectedUIImage)
            })
            
        }
        
        
    }
}

struct Content_View_Previews: PreviewProvider {
    static var previews: some View {
        Content_View()
    }
}
