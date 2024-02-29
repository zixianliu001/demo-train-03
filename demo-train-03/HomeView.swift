//
//  HomeView.swift
//  demo-train-03
//
//  Created by 魏宏 on 2024/2/28.
//

import Foundation
import SwiftUI

struct HomeView: View {
    @Environment(\.presentationMode) var mode // 用于管理视图的消失
    @State private var isLoggedIn = false
    var devId: String // 设备ID

    var body: some View {
        VStack {
            IndexTopView() // 自定义顶部视图
            Text("Device ID: \(devId)") // 显示设备ID
            TabView {
                EventsView() // 事件视图
                    .tabItem {
                        Image(systemName: "calendar")
                        Text("事件")
                    }
                
                UsersView() // 用户视图
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("用户")
                    }
                
                SystemView() // 系统视图
                    .tabItem {
                        Image(systemName: "gear")
                        Text("系统")
                    }
            }
        }
        .navigationBarBackButtonHidden(true) // 隐藏默认的后退按钮
        .navigationBarItems(leading: Button(action: {
            // 点击返回按钮的操作
            self.mode.wrappedValue.dismiss()
        }) {
            HStack(spacing: 0) { // 使用 HStack 并将间距设置为 0 来组合图像和文本
                Image("back_btn_black")
                    .resizable() // 使图片可以调整大小
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 10) // 调整高度以匹配图标的实际外观
                    .padding(.trailing, -2) // 将这个值调整为根据实际需要缩小间距

                Text("设备管理")
                    .font(.system(size: 12))
                    .foregroundColor(.white) // 将文本颜色设置为白色
            }

        })
    


    }





struct SystemView: View {
    var body: some View {
        // 系统页的内容
        Text("这是系统页")
    }
}


    struct Bond: Codable, Identifiable {
        var id: String
        var activeFlag: String?
        var appId: String?
        var appNotify: String?
        var bindFlag: String?
        var bindTime: String?
        var create_by: String?
        var create_time: String?
        var devId: String?
        var devKey: String?
        var devName: String?
        var phone: String?
        var update_by: String?
        var update_time: String?
        var userId: String?
        var userOpenId: String?
        var wxMsgFlag: String?
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            
            HomeView(devId: "111" ?? "")
                .previewInterfaceOrientation(.portrait)
        }
    }
}
