//
//  ModalCoordinator.swift
//  TestNav
//
// 
//

import SwiftUI

struct ModalCoordinator<Content: View>: View {
    var content: () -> Content

    var body: some View {
        content()
        .navigationDestination(for: PushLink.self, destination: linkDestination)
    }
    
    @ViewBuilder private func linkDestination(link: PushLink) -> some View {
        switch link {
        case .next:
            SecondView()
        }
    }
}

enum PushLink: Hashable, Identifiable {
    case next

    var id: String {
        String(describing: self)
    }
}
