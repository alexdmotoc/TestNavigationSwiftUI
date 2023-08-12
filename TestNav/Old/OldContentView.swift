//
//  OldContentView.swift
//  TestNav
//
// 
//

import SwiftUI

struct OldContentView: View {
    @State var isPresented = false
    
    var body: some View {
        VStack {
            Button(action: {
                isPresented.toggle()
            }, label: {
                Text("SHOW MODAL")
            })
        }
        .sheet(isPresented: $isPresented) {
            OldModalView()
        }
    }
}

struct OldContentView_Previews: PreviewProvider {
    static var previews: some View {
        OldContentView()
    }
}
