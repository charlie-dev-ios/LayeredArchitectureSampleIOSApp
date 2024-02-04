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

    @Published private var sheets: [SheetType] = []
    @Published private var alert: AlertType?

    private init() {}

    func present(sheet: SheetType) {
        if !sheets.contains(sheet) {
            sheets.append(sheet)
        }
    }

    func dismissSheets() {
        sheets.removeAll()
    }

    func dismiss(sheet: SheetType) {
        sheets.removeAll(where: { $0 == sheet })
    }

    func isPresented(sheet: SheetType) -> Binding<Bool> {
        .init(get: {
            self.sheets.contains(sheet)
        }, set: { newValue in
            if !newValue, let index = self.sheets.firstIndex(of: sheet) {
                self.sheets.remove(at: index)
            }
        })
    }

    func present(alert: AlertType) {
        self.alert = alert
    }

    func isPresented(alert: AlertType) -> Binding<Bool> {
        .init(get: {
            self.alert == alert
        }, set: { newValue in
            if !newValue {
                self.alert = nil
            }
        })
    }

    func dismissAlert() {
        alert = nil
    }

    func dismissAllModals() {
        dismissSheets()
        dismissAlert()
    }
}

struct SheetType: Hashable {
    let uuid = UUID()
}

struct AlertType: Hashable {
    let uuid = UUID()
}
