//
//  RootCoordinator.swift
//  TestNav
//
// 
//

import SwiftUI

enum SheetLink: Hashable, Identifiable {
    case allFilters

    var id: String {
        String(describing: self)
    }
}

struct RootCoordinator<Content: View>: View {
    @ObservedObject var state: RootState
    let content: () -> Content

    var body: some View {
        content()
        .sheet(item: $state.presentedItem, content: sheetContent)
    }
    
    @ViewBuilder private func sheetContent(item: SheetLink) -> some View {
        switch item {
        case .allFilters:
            ModalView()
        }
    }
}
