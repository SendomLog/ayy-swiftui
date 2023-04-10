//
//  LoginPreView.swift
//  ayy-swiftui
//
//  Created by iMac on 2023/4/7.
//

import SwiftUI

struct LoginAgreeButton: View {
    
    @Binding var agree: Bool
    var width = 10.0
    
    var body: some View {
        Button {
            agree.toggle()
        } label: {
            ZStack {
                Circle()
                    .strokeBorder(.white, lineWidth: 1)
                    .frame(width: width, height: width)
                if agree {
                    Image("icon_login_rightbottom")
                        .foregroundColor(.white)
                }
            }
        }

    }
}

/// 1. 创建实例: 1. 视图可能被多次创建, 2. 视图可能由于懒加载不立刻创建
/// 2. 求值: 调用 body get 方法(每次更新都会调用)
/// 3. 布局: 父控件像子空间提供大小, 子控件像父控件返回需要的尺寸
/// 4. 渲染
/// 
struct LoginPreView: View {
    
    @EnvironmentObject var appStore: AppStore
    
    @StateObject var store = LoginStore()
    
    var bgView: some View {
        Image("icon_login_bg")
            .resizable()
            .aspectRatio(contentMode: .fill)
    }
    
    var loginButton: some View {
        Button {
            if (store.state.agree) {
                store.state.path.append(0)
            }else {
                store.state.showAgreeAlert = true
            }
        } label: {
            Text("手机登陆")
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(Color(red: 52/255.0, green: 56/255.0, blue: 76/255.0))
                .frame(width: 372, height: 50)
                .background(.white)
                .cornerRadius(25)
        }
    }
    
    var negotiateView: some View {
        HStack(spacing: 0) {
            LoginAgreeButton(agree: $store.state.agree)
                .padding(.trailing, 7)
            
            Text("登陆即代表您同意")
                .foregroundColor(Color(red: 199/255.0, green: 199/255.0, blue: 199/255.0))
            
            Link(destination: URL(string: "https://www.baidu.com")!) {
                Text("《用户协议》")
                    .foregroundColor(.white)
            }
            
            Text("和")
                .foregroundColor(Color(red: 199/255.0, green: 199/255.0, blue: 199/255.0))
            
            Link(destination: URL(string: "https://www.baidu.com")!) {
                Text("《隐私政策》")
                    .foregroundColor(.white)
            }
        }
        .font(.system(size: 14))

        .frame(idealHeight: 25)
    }
    
    var frontView: some View {
        VStack(spacing: 34) {
            Image("icon_login_toptitle")
                .padding(.top, 157)
            Spacer()
            loginButton
            negotiateView
                .padding(.bottom, 37)
        }
    }
    
    var body: some View {
        NavigationStack(path: $store.state.path) {
            ZStack {
                bgView
                frontView
                LoginNegotiateAlertView(certainCallback: {
                    store.state.agree = true
                    store.state.showAgreeAlert = false
                    store.reduce(action: .push(.phoneLogin))
                }, quiteCallback: {
                    exit(0)
                })
                    .opacity(store.state.showAgreeAlert ? 1.0 : 0.0)
            }
            .ignoresSafeArea()
            .navigationDestination(for: LoginPushTargetType.self) { target in
                store.state.push(target)
            }
        }
    }
}

struct LoginPreView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPreView()
    }
}
