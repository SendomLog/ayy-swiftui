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
        switch type {
        case .phoneLogin:
            return Group {
                AnyView(LoginPhoneView())
            }
        case .testView:
            return Group {
                AnyView(TestOnAppearCall())
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
            store.state.path.append(type)
        }
        return nil
    }
}

enum LoginPushTargetType {
    case phoneLogin
    case testView
}


