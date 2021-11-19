//
//  DeviceIdiomView.swift
//  Test
//
//  Created by khawlah khalid on 19/11/2021.
//

import SwiftUI

struct DeviceIdiomView: View {
    @Environment(\.horizontalSizeClass) var  horizontalSizeClass
    var body: some View {

        if  UIDevice.current.userInterfaceIdiom == .phone
        {
            Color.blue
                .ignoresSafeArea()
        }
        else {
            if horizontalSizeClass == .compact{
                Color.red
                    .ignoresSafeArea()
            }
            else{
                Color.yellow
                    .ignoresSafeArea()
            }
        }
    }
}

struct DeviceIdiomView_Previews: PreviewProvider {
    static var previews: some View {
        DeviceIdiomView()
        
        DeviceIdiomView()
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (11-inch) (3rd generation)"))
            .environment(\.horizontalSizeClass, .regular)
        
        DeviceIdiomView()
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (11-inch) (3rd generation)"))
            .environment(\.horizontalSizeClass, .compact)
   
    }
}
