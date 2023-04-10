//
//  LoginRedux.swift
//  ayy-swiftui
//
//  Created by iMac on 2023/4/7.
//

import Foundation
import SwiftUI

class LoginStore: ObservableObject {
    @Published var state = LoginState()
    private var reducer = LoginReducer()
    func reduce(action: LoginAction) {
        guard let res = reducer.reduce(self, action: action) else { return }
        reduce(action: res)
    }
}

struct LoginState {
    var title = "首页"
    var agree = false
    var showAgreeAlert = false
    var path = NavigationPath()
    var push: ((LoginPushTargetType) -> Group<AnyView>) = { type in
        return Group {
            switch type {
            case .phoneLogin:
                AnyView(LoginPhoneView())
            }
        }
    }
}

enum LoginAction {
    case push(LoginPushTargetType)
}

struct LoginReducer {
    func reduce(_ store: LoginStore, action: LoginAction) -> LoginAction? {
        switch (action) {
        case .push(let type):
            switch type {
            case .phoneLogin:
                store.state.path.append(LoginPushTargetType.phoneLogin)
            }
        }
        return nil
    }
}

enum LoginPushTargetType {
    case phoneLogin
}


