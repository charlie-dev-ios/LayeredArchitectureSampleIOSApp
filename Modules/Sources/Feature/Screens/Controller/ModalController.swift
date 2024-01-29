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

    @Published private var sheets: [SheetTypes] = []
    @Published private var alert: AlertTypes?

    private init() {}

    func present(sheet: SheetTypes) {
        if !sheets.contains(sheet) {
            sheets.append(sheet)
        }
    }

    func dismissSheets() {
        sheets.removeAll()
    }

    func isPresented(sheet: SheetTypes) -> Binding<Bool> {
        .init(get: {
            self.sheets.contains(sheet)
        }, set: { newValue in
            if !newValue, let index = self.sheets.firstIndex(of: sheet) {
                self.sheets.remove(at: index)
            }
        })
    }

    func present(alert: AlertTypes) {
        self.alert = alert
    }

    func isPresented(alert: AlertTypes) -> Binding<Bool> {
        .init(get: {
            self.alert == alert
        }, set: { newValue in
            if !newValue {
                self.alert = nil
            }
        })
    }

    func dismissAlert() {
        self.alert = nil
    }

    func dismissAllModals() {
        dismissSheets()
        dismissAlert()
    }
}
struct SheetTypes: Hashable {
    let uuid = UUID()
}

struct AlertTypes: Hashable {
    let uuid = UUID()
}
