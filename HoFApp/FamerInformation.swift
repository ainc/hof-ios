//
//  FamerInformation.swift
//  HoFApp
//
//  Created by Carter Crenshaw Howard Gray on 4/22/15.
//  Copyright (c) 2015 Carter Crenshaw Howard Gray. All rights reserved.
//

import Foundation

let backgroundImages = ["John Williams.jpg", "Chris Sullivan.jpg", "James Booth.png", "Junior Bridgeman.jpg", "Nate Morris.png", "Jennifer Mackin.jpg", "Ankur Gopal.jpg"]


class FamerInformation: NSObject {
    
    var name: String
    
    init(name: String) {
        
        println(name)
        self.name = name
        super.init()
    }
    
}

