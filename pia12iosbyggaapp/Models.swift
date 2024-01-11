//
//  Models.swift
//  pia12iosbyggaapp
//
//  Created by BillU on 2024-01-08.
//

import Foundation

enum MoneyTime {
    case daily, weekly, montly
}

class Child {
    var childid = ""
    var name = ""
    var money = 0
    var getmoney = 0
    var howoften : MoneyTime = .daily
    var invitecode = ""
    
    var transactions = [Transaction]()
    
    func exampleChild() -> Child {
        
        var tempchild = Child()
        tempchild.name = "Test Child"
        tempchild.money = 100

        return tempchild
    }
    
}

class Transaction {
    var what = ""
    var howmuch = 0
}

class Parent {
    var name = ""
}
