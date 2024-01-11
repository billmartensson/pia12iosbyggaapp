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

    @State var childinvitecode = ""
    
    var body: some View {
        
        VStack {
            TextField("", text: $loginemail)
                .background(.gray)
            TextField("", text: $loginepassword)
                .background(.gray)

            Button(action: {
                apihelp.login(email: loginemail, pass: loginepassword)
            }) {
                Text("Login")
            }
            
            TextField("", text: $childinvitecode)
                .background(.gray)

            Button(action: {
                apihelp.childLogin(invitecode: childinvitecode)
            }) {
                Text("Child join")
            }

            
            
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
