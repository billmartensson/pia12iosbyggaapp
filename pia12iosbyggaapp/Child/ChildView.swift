//
//  ChildView.swift
//  pia12iosbyggaapp
//
//  Created by BillU on 2024-01-08.
//

import SwiftUI

struct ChildView: View {
    
    @StateObject var apihelp = Apihelper.shared
    
    var body: some View {
        Text("CHILD OWN VIEW")
        
        Button(action: {
            apihelp.logout()
        }, label: {
            Text("Logout")
        })
    }
}

#Preview {
    ChildView()
}
