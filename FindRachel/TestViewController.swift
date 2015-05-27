//
//  TestViewController.swift
//  FindRachel
//
//  Created by Carol Grädel on 5/26/15.
//  Copyright (c) 2015 Julia Motta Baitelli. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    var locker: Array<Locker> = Array<Locker>()
    
    @IBOutlet weak var pw1: UILabel!
    @IBOutlet weak var pw2: UILabel!
    
    @IBAction func loadPlist(sender: AnyObject) {
        
        pw1.text = String(locker[0].code)
        pw2.text = String(locker[1].code)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    var DAOlocker = DAOLocker()
        
    locker = DAOlocker.getDataArray() as! Array<Locker>
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
