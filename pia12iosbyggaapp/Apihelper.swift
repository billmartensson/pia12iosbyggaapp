//
//  apihelper.swift
//  pia12iosbyggaapp
//
//  Created by BillU on 2024-01-08.
//

import Foundation


class Apihelper : ObservableObject {
    
    static let shared = Apihelper()
    
    @Published var loggedinparent : Parent?
    @Published var loggedinchild : Child?

    @Published var children : [Child]?
    
    func checklogin() {
        if let session = UserDefaults.standard.string(forKey: "session") {
            /*
             Anrop: /parent
             */
            
            var tempparent = Parent()
            tempparent.name = "ABC"
            
            loggedinparent = tempparent
        }
        
        if let childcode = UserDefaults.standard.string(forKey: "childcode") {
            /*
             Anrop: /child
             */
            
            var tempchild = Child()
            tempchild.name = "Torsten"
            tempchild.money = 75
            
            loggedinchild = tempchild
        }

    }
    
    func logout() {
        UserDefaults.standard.removeObject(forKey: "session")
        loggedinparent = nil
        UserDefaults.standard.removeObject(forKey: "childcode")
        loggedinchild = nil
    }
    
    func login(email : String, pass : String) {
        
        /*
         Anrop /login
         Skickat: { email: "AA", password: "BB"}
         
         Fått svar:
         {
            session: "XYZ123",
            parent: {
                name: "Torsten"
            }
         }
         */
        
        UserDefaults.standard.setValue("XYZ123", forKey: "session")
        
        var tempparent = Parent()
        tempparent.name = "ABC"
        
        loggedinparent = tempparent
        
    }

    func childLogin(invitecode : String) {
        // Anrop mot api typ:
        // /childlogin skicka med invitecode
        
        UserDefaults.standard.setValue("XYZ123", forKey: "childcode")
        
        var tempchild = Child()
        tempchild.name = "Torsten"
        tempchild.money = 75
        
        loggedinchild = tempchild
    }
    
    func register() {
        
    }

    func loadchildren() {
        /*
         Anrop: /loadchildren
         Skicka med session
         */

        var tempchildren = [Child]()
        
        var c1 = Child()
        c1.childid = "A"
        c1.name = "Arne"
        c1.money = 12
        c1.getmoney = 5
        c1.howoften = .weekly
        c1.invitecode = "ABC"
        tempchildren.append(c1)
        
        var c2 = Child()
        c2.childid = "B"
        c2.name = "Bertil"
        c2.money = 45328
        c2.getmoney = 59
        c2.howoften = .daily
        c2.invitecode = "XYZ"
        tempchildren.append(c2)

        
        children = tempchildren
    }
    
    func addchild() {
        
    }

    func giveMoneyToChild(child: Child, howmuch: Int) async -> Child? {
        
        // Anrop typ:
        // /child/123/give skicka med session, howmuch
        // await anrop api ta tid
        
        // Test istället för apianrop
        var responseChild = Child()
        responseChild.name = child.name
        responseChild.money = child.money + howmuch
        
        return responseChild
    }

    func takeMoneyFromChild(child: Child, howmuch: Int) async -> Child? {
        
        // Anrop typ:
        // /child/123/take skicka med session, howmuch
        // await anrop api ta tid
        
        // Test istället för apianrop
        var responseChild = Child()
        responseChild.name = child.name
        responseChild.money = child.money - howmuch
        
        return responseChild
    }

}
