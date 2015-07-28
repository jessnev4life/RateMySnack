//
//  ViewController.swift
//  BackendServer
//
//  Created by Derrick  Ho on 7/18/15.
//  Copyright (c) 2015 Ho, Derrick. All rights reserved.
//

import UIKit


// This is to be used only for Testing
class FormTest: FormObject {
    var snackName:String = "3 musketeers"
    
}

class ViewController: UIViewController {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        
        BackEndServer.retrieve { (err: NSError?, objs: [FormObject] ) -> Void in
            if err == nil{
                //println(objs)
                //for i in is looping though all data
                for i in objs {
                    print(i.snackName)
                    println(",")
                }
                
            }else {
                println(err)
            }}
        
    }

}

