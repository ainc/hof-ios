//
//  CollectionViewCell.swift
//  HoFApp
//
//  Created by Carter Crenshaw Howard Gray on 1/29/15.
//  Copyright (c) 2015 Carter Crenshaw Howard Gray. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet var imgCell: UIImageView!
    @IBOutlet var lblCell: UILabel!
    @IBOutlet var btnCell: UIButton!
    
    
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!, collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        /*if (segue.identifier == "seguePass") {
        
        var svc = segue.destinationViewController as InfoViewController;
        //strName = tableInductees[indexPath.row]
        println(svc.strName)
        svc.strName = "alksdjfn"//"\(tableInductees[indexPath.row])"
        println(svc.strName)
        
        }*/
        
        //if(segue.identifier == "segue_identifier"){
        // check for / catch all visible cell(s)
        //for item in self.collectionView.FamerCell() as [UICollectionViewCell] {
        //var indexpath : NSIndexPath = self.collectionView.indexPathForCell(item as CollectionViewCell)!
        //var cell : CollectionViewCell = self.collectionView!.cellForItemAtIndexPath(indexpath) as CollectionViewCell
        
        // Grab related PFObject
        //var name:String = self.tableInductees[indexPath.row] as String
        
        // Pass PFObject to second ViewController
        //let theDestination = (segue.destinationViewController as InfoViewController)
        //theDestination.strName = "adlfsg"
        //}
        //}
        
    }
}
