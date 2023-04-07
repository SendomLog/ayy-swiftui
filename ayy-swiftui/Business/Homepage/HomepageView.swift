//
//  HomepageView.swift
//  ayy-swiftui
//
//  Created by iMac on 2023/4/7.
//

import SwiftUI

struct HomepageView: View {
    @EnvironmentObject var appStore: AppStore
    
    @StateObject var store = HomepageStore()
    
    var body: some View {
        Text(store.state.title)
    }
}

struct HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageView()
    }
}
