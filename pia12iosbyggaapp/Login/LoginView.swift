//
//  LoginView.swift
//  pia12iosbyggaapp
//
//  Created by BillU on 2024-01-08.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var apihelp = Apihelper.shared
    
    @State var loginemail = ""
    @State var loginepassword = ""

    var body: some View {
        
        VStack {
            TextField("", text: $loginemail)
            TextField("", text: $loginepassword)
            
            Button(action: {
                apihelp.login(email: loginemail, pass: loginepassword)
            }) {
                Text("Login")
            }
        }
        
    }
}

#Preview {
    LoginView()
}
