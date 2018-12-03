//
//  ViewController.swift
//  OperationQueue
//
//  Created by SENTHILKUMAR on 30/11/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var operationQueue = OperationQueue()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let operation1 = BlockOperation (block: {
            self.doOpration1()
        })
        
        let operation2 = BlockOperation (block: {
            self.doOperation2()
        })
      
     operation1.addDependency(operation2)
     operationQueue.addOperation(operation1)
     operationQueue.addOperation(operation2)
        
        
    }

    
    func doOpration1() {
        
        for i in 0...10 {
            print("Show My Number = \(i)")
            sleep(UInt32(1.0))
        }
        
    }
    
    func doOperation2(){
        
        for i in 100...110 {
            print("Show My Number2 = \(i)")
        }
    }

}

