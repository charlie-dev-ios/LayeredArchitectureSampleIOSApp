//
//  SampleRepository.swift
//
//
//  Created by kotaro-seki on 2024/01/28.
//

import Foundation

public protocol SampleRepository {}

public final class SampleRepositoryImpl: SampleRepository {
    private let dataSource: any SampleDataSource

    public init(dataSource: some SampleDataSource) {
        self.dataSource = dataSource
    }
}
