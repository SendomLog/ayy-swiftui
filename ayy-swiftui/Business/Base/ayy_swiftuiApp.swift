//
//  ayy_swiftuiApp.swift
//  ayy-swiftui
//
//  Created by iMac on 2023/4/6.
//

import SwiftUI
import NetworkManager

@main
struct ayy_swiftuiApp: App {

    @StateObject var store = AppStore()
    
//    func useCombine() {
//        let seak = Seak()
//        let provider = AYYProvider<DelegateService>()
//
//        _ = provider.requestAYYPublisher(.memberConfig, modelType: MemberConfigModel.self)
//            .sink { completion in
//                switch completion {
//                case .failure(let err):
//                    print(err)
//                case .finished:
//                    print("完成")
//                }
//                seak.unseak()
//            } receiveValue: { res in
//                print(res)
//                self.tips = res.data?.draw_tips
//            }.seak(in: seak)
//    }
    
    func useAsync() async {
        do {
            let provier = NetworkManagerProvider<DelegateService>()
            let res: BaseModel<MemberConfigModel> = try await provier.asyncRequestNetworkManagerPublisher(.memberConfig)
            store.state.memberConfig = res.data
        }catch {
            print(error)
        }
    }
    
    func initial() {
        NetworkManagerConfig.shared.enviroment = .test
        
        NetworkManagerConfig.shared.baseUrlDictionry = [
            .test : URL(string: "https://simlove.jjmirror.cn/")!,
            .release : URL(string: "https://prolove.jjmirror.cn/")!,
        ]
        
        NetworkManagerConfig.shared.headers = {
            return [
                "testKey": "testValue"
            ]
        }
        
        NetworkManagerConfig.shared.commonErrorHandler = { res, type in
            guard let code: Int = res["code"] as? Int else {
                return .failure(NSError(domain: "未知类型", code: 700))
            }
            switch code {
                case 500:
                    return .failure(NSError(domain: "未知类型", code: 700))
                default:
                    break
            }
            guard let data = res.jsonData() else { return .failure(NSError(domain: "未知类型", code: 700)) }
            
            do {
                let decoder = JSONDecoder()
                let model = try decoder.decode(type, from: data)
                return .success(model)
            }catch {
                return .failure(NSError(domain: "未知类型", code: 700))
            }
        }
    }
    
    var body: some Scene {
        WindowGroup {
            MainTab()
                .onAppear {
                    initial()
                    Task {
                        await useAsync()
                    }
                }
                .environmentObject(store)
        }
    }
}

struct SliderView {
    @Binding var value: CGFloat
    @ViewBuilder var body: some View {
        Slider(value: $value)
    }
}
