//
//  RootUseCase.swift
//
//
//  Created by kotaro-seki on 2024/01/28.
//

import Foundation
import Repository

public protocol RootUseCase {}

public final class RootUseCaseImpl: RootUseCase {
    private let sampleRepository: any SampleRepository

    public init(sampleRepository: some SampleRepository) {
        self.sampleRepository = sampleRepository
    }
}
