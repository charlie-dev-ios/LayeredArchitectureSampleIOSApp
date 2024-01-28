//
//  TopView.swift
//
//
//  Created by kotaro-seki on 2024/01/28.
//

import NavigationBackport
import SwiftUI

struct TopView: View {
    var body: some View {
        VStack {
            NBNavigationLink(
                value: Destinations.typesList,
                label: {
                    Text("to typeList")
                }
            )
            .nbNavigationDestination(
                for: Destinations.self,
                destination: { destination in
                    switch destination {
                    case .typesList:
                        TypesListView()
                    }
                }
            )
        }
        .navigationTitle("TopView")
    }

    enum Destinations: Hashable {
        case typesList
    }
}

#Preview {
    TopView()
}
