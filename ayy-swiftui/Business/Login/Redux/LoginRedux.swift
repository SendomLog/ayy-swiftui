//
//  LoginRedux.swift
//  ayy-swiftui
//
//  Created by iMac on 2023/4/7.
//

import Foundation

class LoginStore: ObservableObject {
    @Published var state = LoginState()
}

struct LoginState {
    var title = "首页"
    var agree = false
    var showAgreeAlert = false
}
