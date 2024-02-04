//
//  LayeredArchitectureSampleApp.swift
//  LayeredArchitectureSample
//
//  Created by kotaro-seki on 2024/01/21.
//

import Feature
import SwiftUI
import UseCase
import Repository
import Infra

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
