//
//  MainTab.swift
//  ayy-swiftui
//
//  Created by iMac on 2023/4/7.
//

import SwiftUI

struct MainTab: View {
    var body: some View {
        TabView {
            HomepageView()
                .tabItem {
                    Text("首页")
                }
            SettingView()
                .tabItem {
                    Text("设置")
                }
        }
    }
}

struct MainTab_Previews: PreviewProvider {
    static var previews: some View {
        MainTab()
    }
}
