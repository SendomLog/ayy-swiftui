//
//  LoginPhoneView.swift
//  ayy-swiftui
//
//  Created by iMac on 2023/4/7.
//

import SwiftUI

struct LoginPhoneView: View {
    @EnvironmentObject var store: LoginStore
    
    var body: some View {
        Text("手机号登陆")
        Button {
            store.state.path.removeLast()
        } label: {
            Text("点击pop")
        }

    }
}

struct LoginPhoneView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPhoneView()
    }
}
