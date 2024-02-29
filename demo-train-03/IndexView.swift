//
//  IndexView.swift
//  demo-train-03
//
//  Created by 魏宏 on 2024/2/28.
//

import Foundation
import SwiftUI
struct IndexView: View {
    @State private var isLoggedIn = false
    @State private var showingCustomAlert = false

    var body: some View {
        NavigationView {
            VStack {
                IndexTopView()  // 确保TopView始终在最上方
                HStack {
                    Image("icon_otp")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30, alignment: .leading)
                        .padding(.leading, 10)

                    Text("生成一次性密码")
                        .font(.system(size: 18))
                        .foregroundColor(Color.black)
                        .frame(height: 40)
                        .padding(.leading, 10)

                    Spacer()
                    Image("right_brackets")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 15, alignment: .trailing)
                        .padding(.trailing, 10)
                }
                .onTapGesture {
                    self.showingCustomAlert = true
                }
                .sheet(isPresented: $showingCustomAlert) {
                    CustomAlert()
                }

                IndexBondView()
            }
            .frame(maxHeight: .infinity, alignment: .top)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(
                    leading: Text("设备管理")
                        .font(.system(size: 14))
                        .bold()
                        .frame(width: UIScreen.main.bounds.width / 1, alignment: .center))

        }
    }





struct UsersView: View {
    var body: some View {
        // 用户页的内容
        Text("这是用户页")
    }
}
struct EventsView: View {
    var body: some View {
        // 事件页的内容
        Text("这是事件页")
    }
}


struct SystemView: View {
    var body: some View {
        // 系统页的内容
        Text("这是系统页")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        IndexView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
}
