//
//  File.swift
//  ayy-swiftui
//
//  Created by iMac on 2023/4/6.
//

import Foundation

class AppStore: ObservableObject {
    @Published var state: AppState = AppState()
}
