//
//  OldModalView.swift
//  TestNav
//
// 
//

import SwiftUI

struct OldModalView: View {
    @State var path = NavigationPath()
    
    var body: some View {
        let _ = print("Render NavigationStack")
        ZStack {
            NavigationStack(path: $path, root: {
                Button {
                    path.append(PushLink.next)
                } label: {
                    Text("GO TO SECOND")
                }
                .navigationDestination(for: PushLink.self, destination: linkDestination)
            })
        }
    }
    
    @ViewBuilder private func linkDestination(link: PushLink) -> some View {
        switch link {
        case .next:
            SecondView()
        }
    }
}

struct OldModalView_Previews: PreviewProvider {
    static var previews: some View {
        OldModalView()
    }
}
