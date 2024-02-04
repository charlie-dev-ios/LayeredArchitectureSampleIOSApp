//
//  RootView.swift
//
//
//  Created by kotaro-seki on 2024/01/28.
//

import NavigationBackport
import SwiftUI

public struct RootView<ViewModel: RootViewModel>: View {
    @StateObject var viewModel: ViewModel

    public init(viewModel: ViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    public var body: some View {
        NBNavigationStack {
            TopView()
        }
    }
}

#Preview {
    RootView(viewModel: RootViewModelMock())
}
