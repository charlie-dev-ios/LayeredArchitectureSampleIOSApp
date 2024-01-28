//
//  RootView.swift
//
//
//  Created by kotaro-seki on 2024/01/28.
//

import NavigationBackport
import SwiftUI

public struct RootView: View {
    @State private var path = NBNavigationPath()

    public init() {}

    public var body: some View {
        NBNavigationStack {
            TopView()
        }
    }
}

#Preview {
    RootView()
}
