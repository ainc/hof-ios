//
//  TabPageOne.swift
//  HoFApp
//
//  Created by Carter Crenshaw Howard Gray on 4/22/15.
//  Copyright (c) 2015 Carter Crenshaw Howard Gray. All rights reserved.
//

import UIKit

class TabPageOne: UIViewController {
    
    @IBOutlet var textField1: UITextView!
    
    @IBAction func selectedName(segue:UIStoryboardSegue) {
        println("test")
        if let viewController = segue.sourceViewController as? ViewController,
            selectedName = viewController.selectedName {
                textField1.text = selectedName
                //game = selectedGame
        }
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
