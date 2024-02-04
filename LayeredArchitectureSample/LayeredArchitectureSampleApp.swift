//
//  LayeredArchitectureSampleApp.swift
//  LayeredArchitectureSample
//
//  Created by kotaro-seki on 2024/01/21.
//

import Feature
import Infra
import Repository
import SwiftUI
import UseCase

@main struct LayeredArchitectureSampleApp: App {
    var body: some Scene {
        WindowGroup {
            RootView(viewModel: viewModel())
        }
    }

    private func viewModel() -> RootViewModelImpl {
        let dataSource = SampleRemoteSource.shared
        let repository = SampleRepositoryImpl(dataSource: dataSource)
        let useCase = RootUseCaseImpl(sampleRepository: repository)
        return RootViewModelImpl(rootUseCase: useCase)
    }
}
