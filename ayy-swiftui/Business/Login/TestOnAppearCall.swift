//
//  TestOnAppearCall.swift
//  ayy-swiftui
//
//  Created by iMac on 2023/4/10.
//

import SwiftUI

struct TestOnAppearCall: View {
    @State var count = 0
    @State var lazyCount = 0
    
    @State var crashString = [String]()
    
    var body: some View {
        LazyVStack {
            
            Text("lazy 调用次数:\(lazyCount)") /// lazy 的调用了 3次, 会增加调用次数, 会有复用情况
            Text("调用次数:\(count)") /// 非lazy 调用了 40 次, 滑动不会增加onAppear调用次数 总次数一直为 40次, 无服用情况
            
            ScrollView {
                LazyVStack {
                    ForEach(0..<40) { ele in
                        Text("------------------------------- lazy stack \(ele)")
                            .frame(height: 100)
                            .onAppear {
                                print("------------------------------- lazy stack \(ele)")
                                lazyCount += 1
                            }
                    }
                }
            }.frame(height: 300)
            
            ScrollView {
                ForEach(0..<40) { ele in
                    Text("其他-------------------------------其他\(ele)")
                        .frame(height: 100)
                        .onAppear { /// 不会按照特定顺序创建
                            print("-------------------------------其他\(ele)")
                            count += 1
                        }
                }
            }.frame(height: 300)
            
            ///100%崩溃记录
            VStack {
                ForEach(0..<2) { idx in
                    Text(self.getWords(idx)) /// 这里先调用 所以 是个空数组
                }
            }.onAppear { /// 由于计算控件大小, 是由子控件先决定, 然后父控件才能决定, 所以 父控件的 onAppear 的调用顺序一般是最后调用的
                crashString = ["1", "2", "3"]
            }
        }
    }
    func getWords(_ idx: Int) -> String {
        if crashString.isEmpty {
            return ""
        }
        return crashString[idx]
    }
}

struct TestOnAppearCall_Previews: PreviewProvider {
    static var previews: some View {
        TestOnAppearCall()
    }
}
