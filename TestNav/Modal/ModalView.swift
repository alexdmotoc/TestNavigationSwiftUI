//
//  ModalView.swift
//  TestNav
//
// 
//

import SwiftUI

struct ModalView: View {
    @StateObject var viewModel = ModalViewModel()
    @State var navigator = Navigator()

    var body: some View {
        brokenBody
//        workingBody
    }
    
    @ViewBuilder
    var brokenBody: some View {
        let _ = print("Render Modal")
        NavigationStack(path: $viewModel.navigationPath) {
            ModalCoordinator(content: {
                VStack {
                    Button {
                        viewModel.push()
                    } label: {
                        Text(viewModel.name)
                    }
                 }
            })
        }
    }
    
    @ViewBuilder
    var workingBody: some View {
        let _ = print("Render Modal")
        NavigationStack(path: $navigator.navigationPath) {
            ModalCoordinator(content: {
                VStack {
                    Button {
                        navigator.push()
                    } label: {
                        Text(viewModel.name)
                    }
                 }
            })
        }
    }
}

struct Navigator {
    var navigationPath = NavigationPath()
    
    mutating func push() {
        navigationPath.append(PushLink.next)
    }
}
