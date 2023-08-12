//
//  RootViewModel.swift
//  TestNav
//
// 
//

import Foundation

final class RootViewModel: ObservableObject {
    var rootState: RootState

    init(rootState: RootState) {
        self.rootState = rootState
    }

    func present() {
        rootState.presentedItem = .allFilters
    }
}
