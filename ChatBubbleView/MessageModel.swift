//
//  MessageModel.swift
//  Twitter
//
//  Created by khawlah khalid on 21/09/2021.
//

import Foundation


struct Message : Identifiable{
    
    
    let id : Int
    let imageName : String
    let message : String
    let isCurrentUser:Bool

}


struct MockData{
    
   static let Messages :[Message]=[.init(id: 0, imageName: "flower", message: "Where are you going now?", isCurrentUser: false)
    ,.init(id: 1, imageName: "memojy", message: "I'm going to the bank.🚶🏻‍♂️ ", isCurrentUser: true)
      ,  .init(id: 2, imageName: "flower", message: "Aren't you supposed to be at work?", isCurrentUser: false)
                                   
                                   
                                   
                                   
      ,  .init(id: 4, imageName: "flower", message: "I'm making a deposit for our company", isCurrentUser: true)
                                   
      ,  .init(id: 5, imageName: "flower", message: "Where do you work?", isCurrentUser: false)
  
                                   
      ,  .init(id: 6, imageName: "flower", message: "I work for a restaurant as a controller", isCurrentUser: true)
                                   ,  .init(id: 7, imageName: "flower", message: "Wow. That's great 👏🏻", isCurrentUser: false)
                                   ,  .init(id: 8, imageName: "flower", message: "Great seeing you", isCurrentUser: true)
                                   
                                   
                                   ,  .init(id: 9, imageName: "flower", message: "I have to go now ", isCurrentUser: true)
                                   
                                   
                                   ,  .init(id: 10, imageName: "flower", message: "I'll talk to you later👋🏻", isCurrentUser: true)
                                   
 ]
    
    
}
