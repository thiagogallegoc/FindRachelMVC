//
//  DAONotes.swift
//  FindRachel
//
//  Created by Carol Grädel on 5/22/15.
//  Copyright (c) 2015 Julia Motta Baitelli. All rights reserved.
//

import Foundation

class DAONotes: DAOFindRachel{
    override func loadPList() -> NSMutableDictionary? {
    
        var notes: NSMutableDictionary =
        contents["Notes"] as! NSMutableDictionary!
        return notes
    }
    func getNotes() -> [AnyObject!]{
        
        var temp: NSMutableDictionary =
        getNotes()
        var notes: [Notes] = []
        
        for (id,_) in temp {
            var notes: Notes = Notes()
            notes = getNotesById(id) as! Notes
         
        
        }
    }
 

}





