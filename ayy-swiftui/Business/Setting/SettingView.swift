//
//  SettingView.swift
//  ayy-swiftui
//
//  Created by iMac on 2023/4/7.
//

import SwiftUI

struct SettingListView: View {
    @Binding var list: [Int]
    var body: some View {
        print("设置 列表 刷新")
        return Group {
            ScrollView {
                ForEach(list, id: \.self) { element in
                    Text("--------------------\(element)--------------------")
                }
            }
        }
    }
}

var refreshCount = 0

struct SettingView: View {
    @EnvironmentObject var appStore: AppStore

    @StateObject var store = SettingStore()
    
    var body: some View {
        print("设置刷新")
        refreshCount += 1
        return Group {
            VStack {
                Text("\(refreshCount)")
                Text("\(store.state.slider)")
                Slider(value: $store.state.slider)

                SettingListView(list: $store.state.list)
            }.onAppear {
                store.state.list = [
                1,
                2,
                3,
                4,
                5,
                6,
                7,
                8,
                9]
            }
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
