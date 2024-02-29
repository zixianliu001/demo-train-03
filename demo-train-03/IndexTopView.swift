//
//  TopView.swift
//  demo-train-03
//
//  Created by 魏宏 on 2024/2/28.
//

import SwiftUI

struct IndexTopView: View {
    var body: some View {
        // 对应于最外层的 LinearLayout
        VStack {
            // 第一层
            HStack {
                Image("search_show")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 60, alignment: .trailing)
                   
                
                Text("请按以下步骤执行，进行智能锁连接或【绑定新设备】操作") // 将 "@string/index_tip" 替换为适当的文本
                    .foregroundColor(Color.black)
                    .font(.system(size: 16))
                 
            }
            .padding(.top, 10)
            .padding(.bottom, 10)
            
            // 后面三层使用 Grid 布局
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 5) {
                // 第一行
                Image("search_step1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 25)
                
                Image("search_step2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 25)
                
                Image("search_step3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 25)
                
                // 第二行
                Text("打开手机蓝牙")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(Color.black)
                
                Text("打开智能锁蓝牙")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(Color.black)
                
                Text("搜索并连接")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(Color.black)
                
                // 第三行
                Text("打开手机蓝牙开\n关和位置开关")
                    .font(.system(size: 13))
                    .multilineTextAlignment(.center)
                
                Text("唤醒智能锁系统\n后按*#按钮")
                    .font(.system(size: 13))
                    .multilineTextAlignment(.center)
                
                Button("搜索蓝牙") {
                    // 搜索蓝牙的逻辑
                }
                .frame(width: 70,height: 30)
                .font(.system(size: 12))
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)
            }
            .padding(.bottom, 10)
        }
        .background(Color(.sRGB, red: 0xF2/0xFF, green: 0xF2/0xFF, blue: 0xF2/0xFF, opacity: 1))
    }
}

struct ConvertedLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        IndexTopView()
    }
}
