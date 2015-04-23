//
//  ViewController.swift
//  HoFApp
//
//  Created by Carter Crenshaw Howard Gray on 1/29/15.
//  Copyright (c) 2015 Carter Crenshaw Howard Gray. All rights reserved.
//

import UIKit




class ViewController: UIViewController,
UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    
    //var infoView = InfoViewController()
    
    var selectedName:String? = nil
    
    var famerName:String = ""
    
    var tableInductees: [String] = ["John Williams", "Chris Sullivan", "James Booth", "Junior Bridgeman"]
    
    var tableEmerging: [String] = ["Nate Morris", "Jennifer Mackin", "Ankur Gopal"]
    
    var tableImagesInd: [String] = ["John Williams.jpg", "Chris Sullivan.jpg", "James Booth.png", "Junior Bridgeman.jpg"]
    
    var tableImagesEmer: [String] = ["Nate Morris.png", "Jennifer Mackin.jpg", "Ankur Gopal.jpg"]
    
    var groups = []
    
    var count1 = 0
    
    var count2 = 0
    
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        println("FamerCell \(indexPath.row)  \(indexPath.section) selected")

        //FamerInformation(name: tableInductees[1])
        
        //sendName(didSelectItemAtIndexPath: indexPath)
        
        famerName = tableInductees[indexPath.row]
        
        println(tableInductees[indexPath.row])
        
        /*
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("FamerInfoStoryboard") as! UIViewController
        self.presentViewController(vc, animated: true, completion: nil)
        */
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        groups = [tableInductees, tableEmerging]
        return groups[section].count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        if indexPath.section == 0{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("FamerCell", forIndexPath: indexPath) as! CollectionViewCell
        //cell.backgroundColor = UIColor.blackColor()
        cell.lblCell.text = tableInductees[indexPath.row]//"\(indexPath.section):\(indexPath.row)"
        cell.imgCell.image = UIImage(named: tableImagesInd[indexPath.row])
        return cell
        }
        else{
            
            
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier("FamerCell", forIndexPath: indexPath) as! CollectionViewCell
            //cell.backgroundColor = UIColor.blackColor()
            cell.lblCell.text = tableEmerging[indexPath.row]//"\(indexPath.section):\(indexPath.row)"
            cell.imgCell.image = UIImage(named: tableImagesEmer[indexPath.row])
            return cell
        }
        
        
    }
    
    
    func itemAtIndexPath(indexPath: NSIndexPath) -> String {
        
        return self.tableEmerging[indexPath.row]
    }
    
    func setBounds(bounds: CGRect){
        setBounds(CGRect())
    }
       
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func rotated()
    {
        if(UIDeviceOrientationIsLandscape(UIDevice.currentDevice().orientation))
        {
            count1 = 0
        }
        
        if(UIDeviceOrientationIsPortrait(UIDevice.currentDevice().orientation))
        {
            count1 = 0
        }
        
    }
    
    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String,
        atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
            
            
            //1
            switch kind {
                //2
            case UICollectionElementKindSectionHeader:
                //3
                if count2 == 0{
                let headerView =
                collectionView.dequeueReusableSupplementaryViewOfKind(kind,
                    withReuseIdentifier: "InducteeHeader",
                    forIndexPath: indexPath)
                    as! CollectionHeaderView
                headerView.lblHeader.text = "2014 Inductees"
                count2++
                return headerView
                }
                else{
                    let headerView =
                    collectionView.dequeueReusableSupplementaryViewOfKind(kind,
                        withReuseIdentifier: "InducteeHeader",
                        forIndexPath: indexPath)
                        as! CollectionHeaderView
                    headerView.lblHeader.text = "2014 Emerging"
                    //count++
                    return headerView
                }
            default:
                //4
                assert(false, "Unexpected element kind")
            }
            
    }
    
   
}