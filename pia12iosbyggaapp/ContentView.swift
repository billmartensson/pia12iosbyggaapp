//
//  ContentView.swift
//  pia12iosbyggaapp
//
//  Created by BillU on 2024-01-08.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var apihelp = Apihelper.shared
    
    var body: some View {
        
        VStack {
            if apihelp.loggedinparent != nil {
                ChildrenlistView()
            }
            if apihelp.loggedinchild != nil {
                ChildView()
            }

            if apihelp.loggedinparent == nil && apihelp.loggedinchild == nil {
                
                LoginView()
            }
            
        }
        .onAppear() {
            apihelp.checklogin()
        }
        
    }
}

#Preview {
    ContentView()
}
