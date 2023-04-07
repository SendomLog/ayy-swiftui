//
//  HomepageRedux.swift
//  ayy-swiftui
//
//  Created by iMac on 2023/4/7.
//

import Foundation

class HomepageStore: ObservableObject {
    @Published var state = HomepageState()
}

struct HomepageState {
    var title = "首页"
}
