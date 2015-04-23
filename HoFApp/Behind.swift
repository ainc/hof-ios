//
//  Behind.swift
//  HoFApp
//
//  Created by Carter Crenshaw Howard Gray on 2/3/15.
//  Copyright (c) 2015 Carter Crenshaw Howard Gray. All rights reserved.
//

import Foundation
class Behind: InfoViewController {
  /*
   //var namePicked:String = "aaa"
    var name:String = ""
    
    init(namePicked: String) {
        
       self.name = namePicked
        setName(namePicked)
    }
    
    init(){
        getName()
    }
    
    func getName() -> String{
        return self.name
    }

    func setName(namePicked: String) {
        self.name = namePicked
    }
   
    //var famerName = Behind()

    //var behindName = Behind(name: "famer name")
    
    //behindName.namePicked = "asdlkfhj"

   
    init(namePicked: String) {

        self.name = namePicked
        super.init()
        
    }
    
    var namePicked: String {
        
        get {
            return name
        }
        
        set {
            name = namePicked
        }
    }
     */
    
    var name:String = ""
    
     override func loadLabel() {
        strName = name
    }

    func setName(namePicked: String) {
        self.name = namePicked
        loadLabel()
    }
    
        
}
