//
//  Message.swift
//  FindRachel
//
//  Created by Carol Grädel on 5/22/15.
//  Copyright (c) 2015 Julia Motta Baitelli. All rights reserved.
//

import UIKit

class Message {
    //entao as mensagens serao numeradas nao apenas como 1,2,3... 
    //precisa numerar como 1.1,1.2
    
    var index: Int!
    var content: [String!]
    var image: String!
    var name: String!
    var type: String!
    
    init(index: Int!, content: [String!], image: String!,name: String!, type:String!) {
        
        self.index = index
        self.content = content
        self.image = image
        self.name = name
        self.type = type
        
    }
}