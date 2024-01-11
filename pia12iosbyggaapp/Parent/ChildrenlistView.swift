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
            VStack {
                Text("CHILDREN")

                

                NavigationLink(destination: AddChildView()) {
                    Text("ADD CHILD")
                }

                NavigationLink(destination: AddParentView()) {
                    Text("ADD PARENT")
                }
                
                if apihelp.children == nil {
                    Spacer()
                    Text("Loading...")
                    Spacer()
                } else {
                    List {
                        ForEach(apihelp.children!, id: \.childid) { child in
                            NavigationLink(destination: ViewchildView(currentchild: child)) {
                                ChildrowView(rowchild: child)
                            }
                        }
                    }
                }
                
                Button(action: {
                    apihelp.logout()
                }) {
                    Text("Logout")
                }
            }
            .onAppear() {
                apihelp.loadchildren()
            }
            
        }
    }
}

#Preview {
    ChildrenlistView()
}
