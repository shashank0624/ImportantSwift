//
//  Concepts.swift
//  ImportantSwift
//
//  Created by Shashank Panwar on 1/6/18.
//  Copyright © 2018 Shashank Panwar. All rights reserved.
//

import Foundation

struct Address{
    var streetAddress : String
    var city : String
    var state : String
    var postalCode : String
//    init(streetAddress: String, city: String, state: String, postalCode: String) {
//        self.streetAddress = streetAddress
//        self.city = city
//        self.state = state
//        self.postalCode = postalCode
//    }
}

class Person{
    var name : String
    var address : Address
    
    init(name: String, address: Address){
        self.name = name
        self.address = address
    }
}

struct Bill{
    let amount : Float
    let billedTo : Person
    
    init(amount: Float, billedTo : Person) {
        self.amount = amount
        self.billedTo = Person(name: billedTo.name, address: billedTo.address)
    }
}

