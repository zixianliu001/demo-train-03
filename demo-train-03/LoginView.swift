//
//  LoginView.swift
//  demo-train-03
//
//  Created by 魏宏 on 2024/2/28.
//

import Foundation
import SwiftUI
struct LoginPageView: View {
    @State private var phoneNumber: String = ""
    @State private var password: String = ""
    // 用于控制输入框是否聚焦
     @State private var isPhoneFocused: Bool = false
     @State private var isPasswordFocused: Bool = false
    @State private var isLoggedIn = false
    @State private var isRegister = false
    var body: some View {
        
        if isLoggedIn {
           
            IndexView()
     
        }else if isRegister {
            RegisterSwift()
        }else{
            VStack {
                // Logo
                Image("Image")
                    .resizable() // 使图片可以调整大小
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 50, alignment: .center)

                Text("小扣智家.登录")
                    .font(.system(size: 18, weight: .regular, design: .default).italic())
                    .foregroundColor(.gray)
                // 手机号输入框
             TextField("手机号", text: $phoneNumber)
                 .textFieldStyle(RoundedBorderTextFieldStyle())
                 .padding()
                 .frame(width: 300, height: 50, alignment: .center)
                 .scaleEffect(isPhoneFocused ? 1.1 : 1) // 当聚焦时放大
                 .onTapGesture {
                     self.isPhoneFocused = true
                     self.isPasswordFocused = false
                             }.onTapGesture {
                                 // 点击其他区域时取消放大
                                 self.isPhoneFocused = false
                                 self.isPasswordFocused = false
                                 hideKeyboard()
                             }
                         
             // 密码输入框
             SecureField("密码", text: $password)
                 .textFieldStyle(RoundedBorderTextFieldStyle())
                 .padding()
                 .frame(width: 300, height: 50, alignment: .center)
                 .scaleEffect(isPasswordFocused ? 1.1 : 1) // 当聚焦时放大
                 .onTapGesture {
                     self.isPasswordFocused = true
                     self.isPhoneFocused = false
                             }
                // 登录按钮
                HStack {
                    Spacer()
                    Button("登录") {
                        login()
                    }
                    .padding()
                    .frame(width: 100, height: 50)
                    .font(.system(size: 18, weight: .regular, design: .default).italic())
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
                    
                    Spacer()
                    
                    Button("注册") {
                        register()
                    }
                    .padding()
                    .frame(width: 100, height: 50)
                    .font(.system(size: 18, weight: .regular, design: .default).italic())
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
                    Spacer()
                }

          
            }
        }
        
        
    }

    // 登录逻辑
    private func login() {
        self.isLoggedIn = true

    }
    private func register() {
        self.isRegister = true

    }
    // 隐藏键盘
    private func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPageView()
    }
}
