//
//  SharedUseCase.swift
//
//
//  Created by kotaro-seki on 2024/02/04.
//

import Foundation
import Repository

public protocol SharedUseCase {}

public final class SharedUseCaseImpl: SharedUseCase {
    private let sampleRepository: any SampleRepository

    public init(sampleRepository: some SampleRepository) {
        self.sampleRepository = sampleRepository
    }
}
