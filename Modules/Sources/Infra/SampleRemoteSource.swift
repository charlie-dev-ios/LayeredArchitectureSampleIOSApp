//
//  SampleRemoteSource.swift
//
//
//  Created by kotaro-seki on 2024/01/28.
//

import Foundation
import Repository

public final class SampleRemoteSource: SampleDataSource {
    public static let shared: some SampleDataSource = SampleRemoteSource()

    private init() {}
}
