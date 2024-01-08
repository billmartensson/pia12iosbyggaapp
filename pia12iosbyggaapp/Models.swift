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
    var name = ""
    var money = 0
    var getmoney = 0
    var howoften : MoneyTime = .daily
    var invitecode = ""
}


class Parent {
    var name = ""
}
