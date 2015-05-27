//
//  DAOFindRachel.swift
//  FindRachel
//
//  Created by Carol Grädel on 5/26/15.
//  Copyright (c) 2015 Julia Motta Baitelli. All rights reserved.
//

import Foundation

class DAOFindRachel {

    var contents: NSMutableDictionary!
    var plistPath: String!
    
    init() {
        
        plistPath = NSBundle.mainBundle().pathForResource("Property List", ofType: "plist")
        contents = NSMutableDictionary(contentsOfFile: plistPath!)
    }
    
    func loadPList() -> NSMutableDictionary? {
        return nil
    }
    
    
}
