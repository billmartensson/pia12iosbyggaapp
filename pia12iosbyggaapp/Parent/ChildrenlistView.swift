//
//  ChildrenlistView.swift
//  pia12iosbyggaapp
//
//  Created by BillU on 2024-01-08.
//

import SwiftUI

struct ChildrenlistView: View {
    
    @StateObject var apihelp = Apihelper.shared
    
    var body: some View {
        
        NavigationStack {
            Text("CHILDREN")

            NavigationLink(destination: ViewchildView()) {
                Text("VIEW CHILD")
            }

            NavigationLink(destination: AddChildView()) {
                Text("ADD CHILD")
            }

            NavigationLink(destination: AddParentView()) {
                Text("ADD PARENT")
            }
            
            Spacer()
            
            Button(action: {
                apihelp.logout()
            }) {
                Text("Logout")
            }
            
        }
    }
}

#Preview {
    ChildrenlistView()
}
