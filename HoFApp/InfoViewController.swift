//
//  InfoViewController.swift
//  HoFApp
//
//  Created by Carter Crenshaw Howard Gray on 1/30/15.
//  Copyright (c) 2015 Carter Crenshaw Howard Gray. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    //var behind = Behind()
    
    
    var viewController = ViewController()
    
    //var behind = Behind()
    
    var strName = "bbb"
    
    @IBOutlet var lblNameInfo: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //strName = behind.namePicked
        
        //strName = namePicked
        
        println(strName)
        
        
        lblNameInfo.text = strName

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadLabel(){
        /*
        var row = behind.getRow()
        
        var section = behind.getSection()
        
        if (section == 0){
            strName = viewController.tableInductees[row]
        }
        else {
            strName = viewController.tableEmerging[row]
        }
*/
        //strName = behind.getName()
        
        println(strName)
        
        lblNameInfo.text = strName
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
