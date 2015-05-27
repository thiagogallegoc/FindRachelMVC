//
//  DAOLocker.swift
//  FindRachel
//
//  Created by Carol Grädel on 5/22/15.
//  Copyright (c) 2015 Julia Motta Baitelli. All rights reserved.
//

import UIKit

class DAOLocker: DAOFindRachel{
//yfjyfj
    override func loadPList() -> NSMutableDictionary? {
        
        var lockers: NSMutableDictionary = contents["Lockers"] as! NSMutableDictionary!
        return lockers
        
    }
    
    func getDataArray() -> [AnyObject] {
        
        var temp: NSMutableDictionary = getPasswords()
        var lockers: [Locker] = []
        
        for (id, _) in temp {
            
            var locker: Locker = Locker()
            locker = getDataById(id) as! Locker
            
            lockers.append(locker)
        
        }
        
        return lockers
    }
    
    func getDataById(id: AnyObject) -> AnyObject {
        
        var locker: Locker = Locker()
        var temp = getPasswords()
        
        var lockerDict: NSDictionary = temp[id as! String] as! NSDictionary
        
        if (lockerDict.count > 0) {
            
            locker.index = (id as! NSString).integerValue
            locker.code = lockerDict["code"] as! String
            
        }
        
        return locker
    }
    
    func getPasswords() -> NSMutableDictionary{
        
        var lockerDict: NSMutableDictionary = self.loadPList()!
        return lockerDict
        
    }
}
