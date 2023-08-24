//
//  ContentView.swift
//  TestNav
//
// 
//

import SwiftUI

struct ScreenA: View {
    @State private var showB = false
    
    var body: some View {
        NavigationView {
            VStack {
                Button("Go to B") {
                    showB = true
                }
                
                NavigationLink(destination: ScreenB(didTapGoBack: {
                    showB = false
                }), isActive: $showB) {
                    EmptyView()
                }
            }
        }
    }
}

struct ScreenB: View {
    var didTapGoBack: () -> Void
    @State var showC = false

    var body: some View {
        VStack {
            Button("Go to C") {
                showC = true
            }
        
            Button("Back to Screen A") {
                didTapGoBack()
            }
            
            NavigationLink(destination: ScreenC(didTapGoBack: {
                showC = false
            }), isActive: $showC) {
                EmptyView()
            }
        }
    }
}

struct ScreenC: View {
    var didTapGoBack: () -> Void
    
    var body: some View {
        VStack {
            Text("Screen C")
            Button("Back to Screen B") {
                didTapGoBack()
            }
        }
    }
}
