//
//  TopViewModel.swift
//
//
//  Created by kotaro-seki on 2024/02/04.
//

import Foundation
import UseCase

public protocol RootViewModel: ObservableObject {}

public final class RootViewModelImpl: RootViewModel {
    private let rootUseCase: any RootUseCase

    public init(rootUseCase: some RootUseCase) {
        self.rootUseCase = rootUseCase
    }
}

public final class RootViewModelMock: RootViewModel {}
