//
//  ModalController.swift
//
//
//  Created by kotaro-seki on 2024/01/28.
//

import Foundation
import SwiftUI

class ModalController: ObservableObject {
    static let shared = ModalController()

    @Published private var modals: [ModalDefinitions] = []

    private init() {}

    func present(_ modal: ModalDefinitions) {
        if !modals.contains(modal) {
            modals.append(modal)
        }
    }

    func dismiss() {
        modals.removeAll()
    }

    func isPresented(_ modal: ModalDefinitions) -> Binding<Bool> {
        .init(get: {
            self.modals.contains(modal)
        }, set: { newValue in
            if !newValue, let index = self.modals.firstIndex(of: modal) {
                self.modals.remove(at: index)
            }
        })
    }
}
