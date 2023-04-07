//
//  HomepageRedux.swift
//  ayy-swiftui
//
//  Created by iMac on 2023/4/7.
//

import Foundation

class SettingStore: ObservableObject {
    @Published var state = SettingState()
}

struct SettingState {
    var title = "设置"
    var slider = 0.0
    var list = [Int]()
}
