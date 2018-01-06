//
//  ViewController.swift
//  ImportantSwift
//
//  Created by Shashank Panwar on 1/6/18.
//  Copyright © 2018 Shashank Panwar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let kingsLanding = Address(streetAddress: "1 King Way", city: "Kings Landing", state: "Westeros", postalCode: "12345")
        
        let madKing = Person(name: "Aerys", address: kingsLanding)
        let kingSlayer = Person(name: "Jaime", address: kingsLanding)
        
        kingSlayer.address.streetAddress = "1 king way Apt. 1"
//        print("Madking : \(madKing.address.streetAddress)")
//        
//        print("kingSlayer: \(kingSlayer.address.streetAddress)")
        
        let bill = Bill(amount: 42.50, billedTo: madKing)
        let bill2 = bill
        
        bill.billedTo.name = "Shashank"
        print("bill Details: \(bill.billedTo.name)")
        print("bill2 Details: \(bill2.billedTo.name)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

