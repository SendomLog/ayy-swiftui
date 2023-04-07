//
//  LoginNegotiateAlertView.swift
//  ayy-swiftui
//
//  Created by iMac on 2023/4/7.
//

import SwiftUI

struct LoginNegotiateAlertView: View {
    
    var certainCallback:(()->())?
    
    var quiteCallback:(()->())?
    
    var body: some View {
        ZStack {
            Color.black
                .opacity(0.3)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            VStack(spacing: 18) {
                Text("小恋语协议和隐私政策提示")
                    .font(.system(size: 18, weight: .medium))
                    .foregroundColor(Color(red: 23/255.0, green: 20/255.0, blue: 21/255.0))
                Text("小恋语重视并致力保障您的个人隐私，我们根据监管要求更新了《用户协议》和《隐私政策》，特说明如下：\n1.为更好的帮您找到心仪的朋友，会根据您设置的择偶条件，来向您做推荐；\n2.为了查看附近的用户，我们需要使用您的位置信息，您可以随时开启或者关闭项授权")
                    .font(.system(size: 14))
                    .foregroundColor(Color(red: 23/255.0, green: 20/255.0, blue: 21/255.0))
                    .padding(.bottom, 6)
                Button {
                    certainCallback?()
                } label: {
                    Text("同意并继续")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(.white)
                        .frame(width: 256, height: 44)
                        .background(
                            LinearGradient(colors: [(Color(red: 252/255.0, green: 38/255.0, blue: 125/255.0)), (Color(red: 255/255.0, green: 109/255.0, blue: 89/255.0))], startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 0))
                        )
                        .cornerRadius(44)
                }
                Button {
                    quiteCallback?()
                } label: {
                    Text("不同意并退出APP")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(Color(red: 183/255.0, green: 183/255.0, blue: 183/255.0))
                }
            }
            .frame(width: 312)
            .padding(EdgeInsets(top: 23, leading: 19, bottom: 26, trailing: 19))
            .background(.white)
            .cornerRadius(12)
        }
    }
}

struct LoginNegotiateAlertView_Previews: PreviewProvider {
    static var previews: some View {
        LoginNegotiateAlertView()
    }
}
