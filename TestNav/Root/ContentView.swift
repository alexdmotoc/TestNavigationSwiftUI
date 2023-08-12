//
//  ContentView.swift
//  TestNav
//
// 
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: RootViewModel = RootViewModel(rootState: RootState())
    
    var body: some View {
        let _ = print("Render ContentView")
        RootCoordinator(state: viewModel.rootState, content: {
            ZStack {
                Button {
                    viewModel.present()
                } label: {
                    Text("SHOW MODAL")
                }
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
