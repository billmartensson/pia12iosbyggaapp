//
//  ChildrowView.swift
//  pia12iosbyggaapp
//
//  Created by BillU on 2024-01-11.
//

import SwiftUI

struct ChildrowView: View {
    
    @State var rowchild : Child
    
    var body: some View {
        VStack {
            HStack {
                Text(rowchild.name)
                Spacer()
                Text("\(rowchild.money) kr")
            }
        }
    }
}

#Preview {
    ChildrowView(rowchild: Child().exampleChild())
}
