//
//  ViewchildView.swift
//  pia12iosbyggaapp
//
//  Created by BillU on 2024-01-08.
//

import SwiftUI

struct ViewchildView: View {
    
    @StateObject var apihelp = Apihelper.shared
    
    @State var currentchild : Child
    
    @State var givemoney = ""
    @State var takemoney = ""

    var body: some View {
        VStack {
            Text("VIEW CHILD")
            Text(currentchild.name)

            Text("\(currentchild.money)")

            HStack {
                TextField("", text: $givemoney)
                Button(action: {
                    giveMoney()
                }, label: {
                    Text("Give")
                })
            }
            .padding()
            HStack {
                TextField("", text: $takemoney)
                Button(action: {
                    takeMoney()
                }, label: {
                    Text("Take")
                })
            }
            .padding()
        }
    }
    
    func giveMoney() {
        guard let givecash = Int(givemoney) else {
            print("FEL SIFFRA")
            return
        }
        
        Task {
            var result = await apihelp.giveMoneyToChild(child: currentchild, howmuch: givecash)
            
            if result == nil {
                print("ERROR ERROR")
            } else {
                currentchild = result!
            }
        }
    }

    func takeMoney() {
        guard let takecash = Int(takemoney) else {
            print("FEL SIFFRA")
            return
        }
        
        Task {
            var result = await apihelp.takeMoneyFromChild(child: currentchild, howmuch: takecash)
            
            if result == nil {
                print("ERROR ERROR")
            } else {
                currentchild = result!
            }
        }
    }

}

#Preview {
    ViewchildView(currentchild: Child().exampleChild())
}
