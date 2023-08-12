//
//  ModalViewModel.swift
//  TestNav
//
// 
//

import SwiftUI

class ModalViewModel: ObservableObject {
    @Published var navigationPath = NavigationPath()
    var name = "GO TO SECOND"
    
    func push() {
        navigationPath.append(PushLink.next)
    }
}
