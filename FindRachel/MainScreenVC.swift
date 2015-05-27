//
//  MainScreen.swift
//  FindRachel
//
//  Created by Mayara Gasparini Dias  on 21/05/15.
//  Copyright (c) 2015 Julia Motta Baitelli. All rights reserved.
//

import UIKit

class MainScreenVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet var collectionView: UICollectionView!
    
    //carregamentos dos settings
    var defaults = NSUserDefaults.standardUserDefaults()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       
        self.collectionView.registerNib(UINib(nibName:"IconCellMainScreen", bundle:NSBundle.mainBundle()), forCellWithReuseIdentifier: "cell")

    }
    
    //
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        if defaults.boolForKey("HasLaunchedOnce") {
            
            // app already launched
            
        } else {
            
            defaults.setBool(true, forKey: "HasLaunchedOnce")
            defaults.synchronize()
            
            var controller: MessagesVC = MessagesVC(nibName:"Messages", bundle:NSBundle.mainBundle())
            
            self.presentViewController(controller, animated: true, completion: nil)
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }
    
    // MARK: - Collection View DataSource

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 6
    }
    
    // essa func adiciona imagens aos icons
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! IconCellMainScreenView
        
        if indexPath.row == 0 {
            
            cell.imageCell.image = UIImage(named: "MessagesIcon.png")

        } else if indexPath.row == 1 {
            
            cell.imageCell.image = UIImage(named: "GalleryIcon.png")
        }
        
        else if indexPath.row == 2 {
        
            cell.imageCell.image = UIImage(named: "NotesIcon.png")
            
        }
        
        
        return cell
    }
    
    // MARK: - Collection View Delegate
    
    
    //essa func faz c que os icons clicados abram a viewcontroller desejada (ex: messages, gallery..)
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
   
        {
        if indexPath.row == 0 {
        
            var controller = MessagesVC(nibName:"Messages", bundle:NSBundle.mainBundle())
            
            self.presentViewController(controller, animated: true, completion: nil)
        
        } else if indexPath.row == 1 {
        
            var controller = GalleryVC(nibName:"Gallery", bundle:NSBundle.mainBundle())
            
            self.presentViewController(controller, animated: true, completion: nil)
        
        } else if indexPath.row == 2 {
            
            var controller = NotesVC(nibName:"Notes", bundle:NSBundle.mainBundle())
            
            self.presentViewController(controller, animated: true, completion: nil)
            
            }

     println(indexPath.row)
        
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
